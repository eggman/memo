# SDIO protocol of RTL8189ES

* realtek's SDIO protocol is based on USB.

# SDIO
* SDIO Version : 1.1 / 2.0 / 3.0
* SDIO Clock : up to 100MHz

# SDIO PIPE
* SDIO_LOCAL_DEVICE_ID   configuration
* WLAN_TX_HIQ_DEVICE_ID  data
* WLAN_TX_MIQ_DEVICE_ID  no use
* WLAN_TX_LOQ_DEVICE_ID  no use

# SDIO REGISTER

## register index id
* #define SDIO_REG_TX_CTRL			0x0000 // SDIO Tx Control
* #define SDIO_REG_HIMR				0x0014 // SDIO Host Interrupt Mask
* #define SDIO_REG_HISR				0x0018 // SDIO Host Interrupt Service Routine
* #define SDIO_REG_HCPWM				0x0019 // HCI Current Power Mode
* #define SDIO_REG_RX0_REQ_LEN			0x001C // RXDMA Request Length
* #define SDIO_REG_FREE_TXPG			0x0020 // Free Tx Buffer Page
* #define SDIO_REG_HCPWM1				0x0024 // HCI Current Power Mode 1
* #define SDIO_REG_HCPWM2				0x0026 // HCI Current Power Mode 2
* #define SDIO_REG_HTSFR_INFO			0x0030 // HTSF Informaion
* #define SDIO_REG_HRPWM1				0x0080 // HCI Request Power Mode 1
* #define SDIO_REG_HRPWM2				0x0082 // HCI Request Power Mode 2
* #define SDIO_REG_HPS_CLKR			0x0084 // HCI Power Save Clock
* #define SDIO_REG_HSUS_CTRL			0x0086 // SDIO HCI Suspend Control
* #define SDIO_REG_HIMR_ON			0x0090 // SDIO Host Extension Interrupt Mask Always
* #define SDIO_REG_HISR_ON			0x0091 // SDIO Host Extension Interrupt Status Always

## address convertion
* HalSdioGetCmdAddr8723ASdio() SDIO_LOCAL_DEVICE_ID
* Addr : SDIO_REG_*
* pCmdAddr : real sdio address
* #define SDIO_LOCAL_DEVICE_ID			0	// 0b[16], 000b[15:13]
* #define SDIO_LOCAL_MSK				0x0FFF
* *pCmdAddr = ((SDIO_LOCAL_DEVICE_ID << 13) | (Addr & SDIO_LOCAL_MSK));

* example : SDIO_REG_TX_CTRL  -> 0x0000



# SDIO API

## sdio_hal.h
* u8 sd_hal_bus_init(PADAPTER padapter)
* u8 sd_hal_bus_deinit(PADAPTER padapter)

## sdio_ops.h
* void sdio_set_intf_ops(struct _io_ops *pops)

* u8 SdioLocalCmd52Read1Byte(PADAPTER padapter, u32 addr)
* void SdioLocalCmd52Write1Byte(PADAPTER padapter, u32 addr, u8 v)
* s32 _sdio_local_read(PADAPTER padapter, u32 addr, u32 cnt, u8 *pbuf)
* s32 sdio_local_read(PADAPTER padapter, u32 addr, u32 cnt, u8 *pbuf)
* s32 _sdio_local_write(PADAPTER padapter, u32 addr, u32 cnt, u8 *pbuf)
* s32 sdio_local_write(PADAPTER padapter, u32 addr, u32 cnt, u8 *pbuf)

* u32 _sdio_read32(PADAPTER padapter, u32 addr)
* s32 _sdio_write32(PADAPTER padapter, u32 addr, u32 val)

* void sd_int_hdl(PADAPTER padapter)

* u8 HalQueryTxBufferStatus8189ESdio(PADAPTER padapter)

* void InitInterrupt8188ESdio(PADAPTER padapter)
* void EnableInterrupt8188ESdio(PADAPTER padapter)
* void DisableInterrupt8188ESdio(PADAPTER padapter)
* void UpdateInterruptMask8188ESdio(PADAPTER padapter, u32 AddMSR, u32 RemoveMSR)

* u8 RecvOnePkt(PADAPTER padapter, u32 size)
* void ClearInterrupt8189ESdio(PADAPTER padapter)

## sdio_ops_linux.h

* u8 sd_f0_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
* void sd_f0_write8(struct intf_hdl *pintfhdl, u32 addr, u8 v, s32 *err)

* s32 _sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
* s32 _sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
* s32 sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
* s32 sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)

* u8 _sd_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
* u8 sd_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
* u16 sd_read16(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
* u32 _sd_read32(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
* u32 sd_read32(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
* s32 _sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
* s32 sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
* void sd_write8(struct intf_hdl *pintfhdl, u32 addr, u8 v, s32 *err)
* void sd_write16(struct intf_hdl *pintfhdl, u32 addr, u16 v, s32 *err)
* void _sd_write32(struct intf_hdl *pintfhdl, u32 addr, u32 v, s32 *err)
* void sd_write32(struct intf_hdl *pintfhdl, u32 addr, u32 v, s32 *err)
* s32 _sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
* s32 sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)

* void rtw_sdio_set_irq_thd(struct dvobj_priv *dvobj, _thread_hdl_ thd_hdl)

## sdio_osintf.h

* u8 sd_hal_bus_init(PADAPTER padapter)
* u8 sd_hal_bus_deinit(PADAPTER padapter)
* void sd_c2h_hdl(PADAPTER padapter)


# References
* http://www.realtek.com.tw/products/productsView.aspx?Langid=1&PFid=48&Level=5&Conn=4&ProdID=329
* https://github.com/LingYunZhi/rtl8189es
