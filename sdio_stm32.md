# SD host of STM32

* STM32 use ARM PrimeCell Multimedia Card Interface (PL180).

# Feature

# Hardware

## Register

* 0x00 SDIO_POWER
* 0x04 SDIO_CLKCR
* 0x08 SDIO_ARG
* 0x0C SDIO_CMD
* 0x10 SDIO_RESPCMD
* 0x14 SDIO_RESP1
* 0x18 SDIO_RESP2
* 0x1C SDIO_RESP3
* 0x20 SDIO_RESP4
* 0x24 SDIO_DTIMER
* 0x28 SDIO_DLEN
* 0x2C SDIO_DCTRL
* 0x30 SDIO_DCOUNT
* 0x34 SDIO_STA
* 0x38 SDIO_ICR
* 0x3C SDIO_MASK
* 0x48 SDIO_FIFOCNT
* 0x80 SDIO_FIFO

## FIFO

* 2 FIFO (for TX, for RX)
* 32 bit width
* 16 words 

# Software

## CMD0

## CMD2

## CMD3

## CMD5

## CMD7

## CMD8

## CMD52

## CMD53


# PL180

## Register of PL180

* 0x000 MCIPower
* 0x004 MCIClock
* 0x008 MCIArgument
* 0x00C MMCCommand
* 0x010 MCIRespCmd
* 0x014 MCIResponse0
* 0x018 MCIResponse1
* 0x01C MCIResponse2
* 0x020 MCIResponse3
* 0x024 MCIDataTimer
* 0x028 MCIDataLength
* 0x02C MCIDataCtrl
* 0x030 MCIDataCnt
* 0x034 MCIStatus
* 0x038 MCIClear
* 0x03C MCIMask0
* 0x040 MCIMask1
* 0x044 MCISelect
* 0x048 MCIFifoCnt
* 0x080 - 0x0BC  MCIFIFO
* 0xFE0 MCIPreiphID0
* 0xFE4 MCIPreiphID1
* 0xFE8 MCIPreiphID2
* 0xFEC MCIPreiphID3
* 0xFF0 MCIPCellID0
* 0xFF4 MCIPCellID1
* 0xFF8 MCIPCellID2
* 0xFFC MCIPCellID3

# Reference
* ARM PrimeCell Multimedia Card Interface (PL180) Technical Reference Manual
 * http://infocenter.arm.com/help/topic/com.arm.doc.ddi0172a/DDI0172.pdf
* Linux driver
 * https://github.com/EmcraftSystems/linux-emcraft/blob/master/drivers/mmc/host/mmci.c
* nemui san
 * http://nemuisan.blog.bai.ne.jp/?eid=213760
* RT-Thread  stm32 with marvel 8686
 * https://github.com/RT-Thread/realboard-stm32f4
