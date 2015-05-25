# MT7681 API

# API
## from document
* spi_flash_read_m2(addr, data, len)
* spi_flash_write_func(addr, data, len)
* iot_get_rxfilter()
* iot_set_rxfilter(Value)
* WifiRxFsIntFilterOut(RxpBufDesc)
* sta_legacy_frame_tx(PktBuff, PacketLen, bClearFrame)
* cnmTimerInitTimer(prTimer, pfFunc, u4Data, u4Data2)
* cnmTimerStartTimer(prTimer, u4TimeoutMs)
* cnmTimerStopTimer(prTimer)
* RT_MD5(Message[], MessageLen, DigestMessage[])
* RT_MD5_Init(pMD5_CTX)
* RT_MD5_Append(pMD5_CTX, Message[], MessageLen)
* RT_MD5_End(pMD5_CTX, DigestMessage[])
* crc_cal_by_byte(ptr, len)
* crc_cal_by_halfbyte(ptr, len)
* load_com_cfg()
* reset_com_cfg()
* load_sta_cfg()
* reset_sta_cfg()
* store_sta_cfg()
* load_ap_cfg()
* reset_ap_cfg()
* store_ap_cfg()
* load_usr_cfg()
* reset_usr_cfg()

## api/ap_pub.h
* int32 iot_ap_init(void)
* void iot_ap_startup(void)
* void iot_ap_pmk_set(void)
* void iot_apcfg_preinit(void)
* void iot_apcfg_update(uint8 *pSSID, uint8 AuthMode, uint8 *pPassword, uint8 Channel)
* void set_entry_phycfg(MAC_TABLE_ENTRY *pEntry)
* void store_ap_cfg(void)
* bool reset_ap_cfg(void)
* int32 AsicSetPreTbttInt(bool enable)
* void AsicEnableBssSync(void)
* void APMakeBssBeacon(void)
* void APUpdateBeaconFrame(void)
* void APSendNullFrame(IN puchar pAddr, IN uint8 pwrMgmt)
* void iot_ap_mactbl_mgmt()
* MAC_TABLE_ENTRY *MacTableLookup(puchar pAddr)
* bool MacTableDeleteEntry(IN uint16 wcid)
* MAC_TABLE_ENTRY *MacTableInsertEntry(IN  puchar    pAddr,IN bool CleanAll)
* void MacTableReset(void)

## api/iot_api.h
* void iot_sys_init()

* int32 __romtext memcmp(const void * cs,const void * ct, unsigned long count)
* int32 atoi(const int8 *s)
* void  printf_high(const char *fmt, ...)

* void *malloc(unsigned long size)
* void free(void *ptr)

* void DelayTick(uint8 Time)
* void usecDelay(uint32 micro)
* void msecDelay(uint32 milli)

* uint32 iot_get_ms_time(void)
* pQU_t   iot_get_queue_info(void)
* uint32 iot_get_fceint_state(void)

* bool check_data_valid(puchar pdata, uint16 len)
* void dump(puchar pdata, uint16 len)

* void  iot_linkdown(uint16 reason)
* int32 rtmp_bbp_set_bw(uint8 bw)
* void  AsicSwitchChannel(uint8 Channel, bool bScan)
* int32 asic_set_channel(uint8 ch, uint8 bw, uint8 ext_ch)
* void  iot_atcmd_set_channel(uint8 Channel)
* int32 rtmp_bbp_set_ctrlch(int32 ext_ch)
* int32 rtmp_mac_set_ctrlch(int32 extch)
* void iot_sys_reboot(void)
* void store_phymode(uint8 PHYMode)

* void RTMPMakeRSNIE( IN  uint32  AuthMode, IN  uint32  WepStatus, IN  uint8 apidx)

* void   iot_jtag_mode_switch(uint8 switch_on)
* uint32 iot_jtag_mode_get(void)

* void iot_bcn_timeout_action(uint32 param, uint32 param2)
* void RestartBCNTimer(void)

* bool PeerBeaconCHInfoParse(RX_BLK* pRxBlk)

* void APAssocReqActionAndSend(IN RX_BLK *pRxBlk, IN bool isReassoc)
* void APPeerDisassocReqAction(IN RX_BLK *pRxBlk)

* bool get_clear_frame_flag()

* uint16 uart_get_avail(void)
* uint8 uart_rb_pop(void)
* void    uart_rb_init(void)
* void    UART_PutChar(uint8 ch)
* int32   UART_GetChar(uint8* ch)
* void    uart_rb_push(uint8 ch)

* void   uart_tx_cb(void)
* void   uart_rx_cb(void)
* void   uart_rx_dispatch(void)
* void   uart_rxbuf_init(UARTStruct *qp)

* int16   iot_uart_input(uint8 *msg, int16 count)
* int16   iot_uart_output(uint8 *msg, int16 count)

* uint8   spi_flash_update_fw_done(uint8 type)
* uint8   spi_flash_update_fw(uint8 type, uint32 offset, uint8 *pdata, uint16 len)
* int32   iot_xmodem_update_fw(void)
* unsigned short crc_cal_by_bit(const unsigned char* ptr, unsigned char len)
* unsigned int crc32(unsigned char* ptr, unsigned short len)

* void  iot_gpio_read(IN int32 gpio_num, OUT uint8* pVal, OUT uint8* pPolarity)
* int32 iot_gpio_output(int32 gpio_num,  int32 output)
* int32 iot_gpio_input(int32 gpio_num,  uint32 *input)
* int32 iot_gpios_output(uint32 output_bitmap, uint32 value_bitmap)
* int32 iot_gpios_mode_chg(uint32 output_bitmap)

* void iot_cust_gpiint_hdlr(IN uint8 GPI_STS)
* uint8 iot_cust_set_gpiint_mode(IN uint8 GPIO_Num, IN uint8 Val)
* void iot_cust_get_gpiint_mode(OUT uint16* pGPI_INT_MODE)
* void mt7681_int_set(IN uint16 INT_MODE)
* uint16 mt7681_int_state(void)

* void iot_sw_pwm_hdlr(void)
* void iot_sw_pwm_init(void) XIP_ATTRIBUTE(".xipsec0")

* uint16 iot_cust_pwm_def_resolution(void)  XIP_ATTRIBUTE(".xipsec0")
* int32 IoT_led_pwm(int led_num, int brightness)
* int32 iot_sw_pwm_add(uint8 gpio_num, uint16 dutycycle, uint16 resolution)  XIP_ATTRIBUTE(".xipsec0")
* int32 iot_sw_pwm_del(uint8 gpio_num)  XIP_ATTRIBUTE(".xipsec0")

* int32  iot_app_proc_pkt(uint8 sock_num, puchar packet , uint16 rawpacketlength)
* int32  iot_app_proc_pkt(puchar packet , uint16 rawpacketlength)
* void   iot_udp_pkt_send(puchar pSrcAddr, puchar pDstAddr, uint16 SrcPort, uint16 DstPort, puchar pPayload, uint16  PayloadLen)
* int32  IoT_build_app_response_header(puchar buffer, uint8 ProtoType, uint8 ProtoSubType, uint16 DataType, uint16 DataLen, struct t_IoTPacketInfo *PacketInfo)
* int32  iot_app_proc_func_pkt(DataHeader* Dataheader, uint8 FunctionType, IoTPacketInfo  *pPacketInfo)
* int32  iot_app_proc_mgmt_pkt(DataHeader* Dataheader, uint16 ManagementType, IoTPacketInfo  *pPacketInfo)

* void   IoT_cp_app_connection_init(void)

* int16  IoT_cp_app_connection_connected(uint8 fd, uint16 lport, puchar raddr, uint16 rport)
* int16  IoT_cp_app_connection_connected(uint8 fd)

* int16   IoT_cp_app_connection_closed(uint8 fd)
* uint16 IoT_cp_app_search_seq(uint8 fd)
* int16   IoT_cp_app_set_seq(uint8 fd, uint16 seq)
* struct cp_app_conn * IoT_cp_app_search_connection(uint8 fd)
* void  uip_send(const void *data, uint16 len)

* void SMTCN_process(void)
* void SMTCN_state_chg_init(void)

* int32  RtmpPasswordHash(pchar password, puchar ssid, int32 ssidlength, puchar output)

* void   split_string_cmd(puchar string_cmd, int16 cmdlen, int16 *pargc, char **argv)
* uint32 simple_strtoul(const char *cp,char **endp,unsigned int base)
* int8   getopt(int16 argc, char *argv[], char *opstring)
* void   iot_atcmd_hdlr(void)

* int32 iot_atcmd_uart_atcfg(puchar pCmdBuf, int16 AtCmdLen)
* int32 iot_tcpip_connect(puchar pCmdBuf, int16 AtCmdLen)
* int32 iot_tcpip_send(puchar pCmdBuf, int16 AtCmdLen)
* int32 iot_tcpip_listen(puchar pCmdBuf, int16 AtCmdLen)
* int32 iot_tcpip_disconnect(puchar pCmdBuf, int16 AtCmdLen)
* int32 iot_tcpip_udp_creat(puchar pCmdBuf, int16 AtCmdLen)
* int32 iot_tcpip_udp_del(puchar pCmdBuf, int16 AtCmdLen)
* int32 iot_tcpip_udp_send(puchar pCmdBuf, int16 AtCmdLen)

* int32 iot_listen (uint16 port)
* int32 iot_connect(uint8 *dst, uint16 port)
* void  iot_disconnect(uint8 fd)
* int32 iot_send(uint8 fd, uint8 *buf, uint16 len)
* int32 iot_udp_new(uint8 *rip, uint16 lport, uint16 rport)
* void  iot_udp_remove(uint8 fd)
* int32 iot_udp_send(uint8 fd, uint8 *buf, uint16 len, uint8 *rip, uint16 rport)
* int32 iot_netif_cfg(uint8 *ip, uint8 *mask, uint8 * gw, uint8 *dns)

* void RT_AES_Decrypt (uint8 CipherBlock[], uint32 CipherBlockSize, uint8 Key[], uint32 KeyLength, uint8 PlainBlock[], uint32 *PlainBlockSize)
* void RT_AES_Encrypt (uint8 PlainBlock[], uint32 PlainBlockSize, uint8 Key[], uint32 KeyLength, uint8 CipherBlock[], uint32 *CipherBlockSize)
* void aes_cbc_encrypt (uint8 PlainText[], uint32  PlainTextLength, uint8 Key[], uint32  KeyLength, uint8 IV[], uint32 IVLength, uint8 CipherText[], uint32 *CipherTextLength)
* void aes_cbc_decrypt (uint8 CipherText[], uint32  CipherTextLength, uint8 Key[], uint32  KeyLength, uint8 IV[], uint32 IVLength, uint8 PlainText[], uint32 *PlainTextLength)

* void ATESTART(uint8 mode)
* bool  Set_ATE_Switch_CH(IN uint8 Channel)
* bool  Set_ATE_TX_MODE_Proc(IN uint8 TxWIPHYMODE)
* bool  Set_ATE_TX_MCS_Proc(IN uint8 MCS)
* bool  Set_ATE_TX_FREQ_OFFSET_Proc(IN uint8 RfFreqOffset)
* bool  Set_ATE_TX_GI_Proc(IN uint8 TxWIShortGI)
* bool  Set_ATE_TX_COUNT_Proc(IN uint32 TxCount)
* bool  Set_ATE_TX_POWER(IN uint32 TxPower)
* bool  set_ate_efuse_write(IN uint16 Offset,  IN uint8 data)
* bool set_ate_efuse_read(IN uint16 Offset, OUT uint8 *pdata)

## api/queue.h
* void apiQU_Initialize (void)
* void apiQU_Enqueue (IN pQU_t pQueue,IN pBD_t pBufDesc)
* OUT pBD_t apiQU_Dequeue (IN pQU_t pQueue)
* OUT pBD_t apiQU_Touch (IN pQU_t pQueue)

## api/spi_flash.h
* uint8 spi_flash_clk_set(uint8 mode)
* void spi_flash_erase(void)
* int8 spi_flash_sr_read(void)
* int32 spi_flash_sr_write(uint8 SR)
* int32 spi_flash_read(uint32 addr, uint8 *data, uint16 len)
* int32 spi_flash_write(uint32 addr, uint8 *data, uint16 len)

* void spi_flash_erase_CE(void)
* void spi_flash_erase_sector(uint32 address)
* void spi_flash_erase_block(uint32 address)
* int32 spi_flash_write_func(uint32 addr, uint8 *data, uint16 len)
* uint8 spi_flash_update_fw_done(uint8 type)
* uint8 spi_flash_update_fw(uint8 type, uint32 offset, uint8 *pdata, uint16 len)

* uint8 dump_spi_flash_fw(uint8 TYPE)
* uint8 dump_spi_flash(uint32 start, uint32 end)

## api/uart_sw.h
* void UART_DisableRX(void)
* void UART_EnableRX(void)
* void UART_DisableTX(void)
* void UART_EnableTX(void)

* void UART_Init(void)
* void mt7681_uart_pin_set(void)

* void iot_uart_init(void)
* void uart_cfg_fr_flash(void)
* void UART_HWInit(void)
* void UART_Close(void)
* void UART_SetBaudRate(UART_baudrate baudrate)
* void UART_SetDCBConfig(UARTDCBStruct *UART_Config)
* void UART_PutUARTByte(volatile uint8 data)

* void UART_Register_TX_cb(UART_TX_FUNC func)
* void UART_Register_RX_cb(UART_RX_FUNC func)
* void UART_LISR(void)
* kal_bool UART_Open(void)
* uint16 _UART_GetByte(volatile uint8 *Byte)
* uint16 uart_put_bytes(volatile uint8 *Buffaddr, volatile uint16 Length)

## ap_auth.h
* void ApSendDeauthAction(IN puchar pAddr, IN uint16 Reason)
* void APPeerAuthReqAction(RX_BLK *pRxBlk)
* void APSendProbeAction(RX_BLK *pRxBlk)
* void APPeerDeauthReqAction(IN RX_BLK *pRxBlk)
* void APPeerAuthSimpleRspGenAndSend( IN PHEADER_802_11 pHdr, IN uint16 Alg, IN uint16 Seq, IN uint16 StatusCode)

# References
* http://labs.mediatek.com/site/global/developer_tools/mediatek_7681/documentation/index.gsp
