# QCA4004 API

# API

## qcom_ap.h
* A_STATUS qcom_ap_start(A_CHAR ssid[])
* A_STATUS qcom_ap_set_beacon_interval(A_UINT16 beacon_interval)
* A_STATUS qcom_ap_get_beacon_interval(A_UINT16 *pbeacon_interval)
* A_STATUS qcom_ap_hidden_mode_enable(A_BOOL enable)
* A_STATUS qcom_ap_set_max_station_number(A_UINT32 sta_num)
* A_STATUS qcom_ap_set_max_station_number(A_UINT32 sta_num)
* A_STATUS qcom_ap_set_flag(A_UINT32 flg)
* A_UINT8 qcom_ap_get_numconn(void)
* A_STATUS qcom_ap_set_inact_time(A_UINT16 inact_time)

## qcom_cdr.h
* void qcom_wlan_connect(NETWORK_TYPE netType, DOT11_AUTH_MODE dot11AuthMode, AUTH_MODE authMode, CRYPTO_TYPE pairwiseCrypto, A_UINT8 pairwiseCryptoLen, CRYPTO_TYPE groupCrypto, A_UINT8 groupCryptoLen, int ssidLength, A_UCHAR * ssid, A_UINT8 * bssid, A_UINT16 channel, A_UINT32 ctrl_flags)
* void qcom_reconnect(A_UINT8 *bssid, A_UINT16 channel)
* void qcom_wlan_disconnect()
* void qcom_start_scan(int scanType, int forceFgScan)
* void qcom_set_scan_params(int fgScan, A_UINT16 max_dwell_time, A_UINT16 pass_dwell_time)
* void qcom_set_bss_filter(int filter)
* void qcom_set_probed_ssid(int index, int flag, char *ssid, int ssidLength)
* void qcom_set_listen_time(A_UINT16 time)
* void qcom_set_ap_beacon_interval(A_UINT16 beacon_interval)
* void qcom_rssi_get(A_UINT16 *rssi)
* void qcom_hw_set_phy_mode(int phyMode)
* void qcom_set_power_mode(int powerMode)
* void qcom_wmi_setPowerParams_cmd(A_UINT16 idlePeriod, A_UINT16 psPollNum, A_UINT16 dtimPolicy, A_UINT16 tx_wakeup_policy, A_UINT16 num_tx_to_wakeup, A_UINT16 ps_fail_event_policy)
* void qcom_add_cipher_key(A_UINT8 keyIndex, CRYPTO_TYPE keyType, A_UINT8 keyUsage, A_UINT8 keyLength, A_UINT8 * keyRSC, A_UINT8 * key, A_UINT8 key_op_ctrl, A_UINT8 * macAddr, int sync_flag)
* void qcom_add_wep_key(int keyIndx, char *key, int keyLength)
* void qcom_wlan_set_tx_power(int dbM)
* void qcom_wlan_set_roam_ctrl(A_UINT8 roamCtrlType, A_UINT8 *buf)
* void qcom_sta_wlan_abort_scan(void)
* void qcom_ap_hidden_ssid(A_UINT8 hidden_ssid)
* void qcom_ap_set_num_sta(A_UINT8 num_sta)
* void qcom_ap_config_commit(A_UINT8 networkType, A_UINT8 dot11AuthMode, A_UINT8 authMode, A_UINT8 pairwiseCryptoType, A_UINT8 pairwiseCryptoLen, A_UINT8 groupCryptoType, A_UINT8 groupCryptoLen, A_UINT8 ssidLength, A_UCHAR * ssid, A_UINT16 channel, A_UINT8 * bssid, A_UINT32 ctrl_flags)
* void qcom_set_ap_country(char *country_code)
* void qcom_allow_aggr(A_UINT16 tx_allow_aggr, A_UINT16 rx_allow_aggr)
* void qcom_set_ht_cap(A_UINT8 band, A_UINT8 enable, A_UINT8 chan_width_40M_supported, A_UINT8 short_GI_20MHz,
                A_UINT8 short_GI_40MHz, A_UINT8 intolerance_40MHz, A_UINT8 max_ampdu_len_exp)
* void qcom_set_pmk(A_UINT8 * pmk, A_UINT8 pmk_len)
* void qcom_hw_set_channel(A_UINT16 channel)
* void qcom_set_passphrase(A_UCHAR * ssid, A_UINT8 ssidLength, A_UINT8 * passphrase, A_UINT8 passLength)
* void qcom_wlan_suspend_enable(void)
* void qcom_wlan_suspend_start(A_UINT32 time)

* void qcom_set_promiscuous_mode(A_UINT8 enable)
* void qcom_switch_mode(A_UINT8 newOpMode, A_UINT8 newSubOpMode)
* void qcom_dev_connected(A_UINT8 *state)

* void qcom_sock_stack_init(void)
* void qcom_dns_get_request(A_UINT32 mode, A_UINT32 domain, char *hostname)
* void qcom_enable_dns_client(A_INT32 command)
* void qcom_dns_server(ip_addr serv_ip, int mode)
* void qcom_ip_config_request(A_UINT32 mode, A_UINT32 ipv4, A_UINT32 subnetMask, A_UINT32 gateway4)
* void qcom_ipconfig_dhcp_pool(A_UINT32 startaddr, A_UINT32 endaddr, A_INT32 leasetime)
* void qcom_ping_request(A_UINT32 ipv4_addr, A_UINT32 size)

* void qcom_get_bp_info(bpool_info_t *bp_info)
* void qcom_reg_read(A_UINT32 address, A_UINT32 *pvalue)
* void qcom_reg_write(A_UINT32 address, A_UINT32 value)

* void qcom_get_rssi_tmp(A_UINT8 * rssi)
* void qcom_mac_read(A_UINT8 *pMac)
* void qcom_reconnect_tmp(A_UINT8 * bssid, A_UINT16 channel)
* void qcom_wlan_wakemgr_power_down(unsigned int wm_time_cn)

* void qcom_mem_heap_get_free_size(A_UINT32 *psize)
* int qcom_dhcp_clean_from_mac(void *hwaddr, A_UINT8 len)
* void qcom_set_promiscuous_rx_cb_internel(A_UINT8 *promiscRxBuf, WLAN_PROMISCUOUS_CB cb)

* void qcom_set_ap_inact_time(A_UINT16 inact_time)

## qcom_cli.h
* void console_setup(void)
* void console_reg_cmds(console_cmd_t *cmds, int cmds_num)
* int console_printf(const char *fmt, ...)

## qcom_gpio.h
* A_STATUS qcom_gpio_config_pin(A_UINT32 pin, A_CHAR config_val, A_INT32 input, QCOM_GPIO_PIN_PULL_TYPE pull_type) 
* void qcom_gpio_set_pin_dir(A_INT32 co_pin, A_INT32 dir_cfg) 
* void qcom_gpio_set_pin_high(A_UINT32 pin)
* void qcom_gpio_set_pin_low(A_UINT32 pin)
* A_BOOL qcom_gpio_get_pin_value(A_UINT32 pin)
* void qcom_gpio_register_pin_interrupt(qcom_gpio_interrupt_info_t * gpio_interrupt_info)
* void qcom_gpio_deregister_pin_interrupt(qcom_gpio_interrupt_info_t *gpio_interrupt_info)
* void qcom_gpio_set_interrupt_mode(qcom_gpio_interrupt_info_t *gpio_int_info, QCOM_GPIO_PIN_INTERRUPT_MODE Mode)
* void qcom_gpio_start_interrupt(qcom_gpio_interrupt_info_t *gpio_int_info)
* void qcom_gpio_set_pin_pad(A_UINT32 pin,QCOM_GPIO_PIN_PULL_TYPE pull_type,QCOM_GPIO_PIN_STRENGH_TYPE strengh_type,QCOM_GPIO_PIN_DRIVER_TYPE driver_type)

## qcom_scan.h
* A_STATUS qcom_scan_set_mode(A_UINT32 mode)
* A_STATUS qcom_scan_get_mode(A_UINT32 *pmode)
* A_STATUS qcom_scan_set_para(A_UINT16 max_dwell_time, A_UINT16 pass_dwell_time)
* A_STATUS qcom_scan_bss_start(A_CHAR ssid[])
* A_STATUS qcom_scan_all_bss_start(void)
* A_STATUS qcom_scan_get_bss_number(A_UINT32 *pnumber)
* A_STATUS qcom_scan_get_bss_info(A_UINT32 id, QCOM_BSS_SCAN_INFO *pbuf)

# References
* https://github.com/cxy560/ZCloud-QCA
