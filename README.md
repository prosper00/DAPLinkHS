# DAPLink
DAPLink (CMSIS-DAP) porting to WCH CH32V305 for USB-2.0 High Speed debugging. Fork from https://github.com/XIVN1987/DAPLink - edited to compile on Linux.

## DAPLink-CH32V305
DAPLink (CMSIS-DAP) based on WCH CH32V305 (High Speed USB with on-chip PHY), supports SWD, JTAG and CDC.

### Pin map
|  FUNC    | Pin   |
|  :----   | :---- |
| SWD_CLK  | PB.13 |
| SWD_DIO  | PB.12 |
| SWD_RST  | PC.8  |
| CDC_TXD  | PB.10 |
| CDC_RXD  | PB.11 |
| JTAG_TDI | PB.15 |
| JTAG_TDO | PB.14 |

Sch & PCB: [https://oshwhub.com/xivn1987/DAPLink-HS](https://oshwhub.com/xivn1987/DAPLink-HS)

