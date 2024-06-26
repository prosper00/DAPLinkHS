/**
 * @file    SWD_flash.c
 * @brief   Program target flash through SWD
 */
#include "SWD_host.h"
#include "SWD_flash.h"


extern const program_target_t flash_algo;


error_t target_flash_init(uint32_t flash_start, uint32_t func)
{
	if(func == 0)
	{
		if (0 == swd_set_target_state_hw(RESET_PROGRAM)) {
			return ERROR_RESET;
		}

		// Download flash programming algorithm to target and initialise.
		if (0 == swd_write_memory(flash_algo.algo_start, (uint8_t *)flash_algo.algo_blob, flash_algo.algo_size)) {
			return ERROR_ALGO_DL;
		}
	}
	else
	{
		if (0 != swd_flash_syscall_exec(&flash_algo.sys_call_s, flash_algo.init, flash_start, 0, func, 0)) {
			return ERROR_INIT;
		}
	}

    return ERROR_SUCCESS;
}

error_t target_flash_uninit(uint32_t func)
{
    if (0 != swd_flash_syscall_exec(&flash_algo.sys_call_s, flash_algo.init, func, 0, 0, 0)) {
		return ERROR_UNINIT;
	}
	
    return ERROR_SUCCESS;
}

error_t target_flash_program_page(uint32_t addr, const uint8_t *buf, uint32_t size)
{
    while (size > 0) {
        uint32_t write_size = size > flash_algo.program_buffer_size ? flash_algo.program_buffer_size : size;

        // Write page to buffer
        if (!swd_write_memory(flash_algo.program_buffer, (uint8_t *)buf, write_size)) {
            return ERROR_ALGO_DATA_SEQ;
        }

        // Run flash programming
        if (swd_flash_syscall_exec(&flash_algo.sys_call_s,
                                    flash_algo.program_page,
                                    addr,
                                    flash_algo.program_buffer_size,
                                    flash_algo.program_buffer,
                                    0)) {
            return ERROR_WRITE;
        }
        
		addr += write_size;
		buf  += write_size;
		size -= write_size;
    }

    return ERROR_SUCCESS;
}

error_t target_flash_erase_sector(uint32_t addr)
{
    if (0 != swd_flash_syscall_exec(&flash_algo.sys_call_s, flash_algo.erase_sector, addr, 0, 0, 0)) {
        return ERROR_ERASE_SECTOR;
    }

    return ERROR_SUCCESS;
}

error_t target_flash_erase_chip(void)
{
    error_t status = ERROR_SUCCESS;

    if (0 != swd_flash_syscall_exec(&flash_algo.sys_call_s, flash_algo.erase_chip, 0, 0, 0, 0)) {
        return ERROR_ERASE_ALL;
    }

    return status;
}
