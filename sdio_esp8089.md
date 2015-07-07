# SDIO protocol of ESP8089

# SDIO parameter
* MANUFACTURER_CODE : 0x6666
* MANUFACTURER_ID   : 0x1111
* SDIO clock        :

## Function 0
* block size        :

## Function 1
* block size        : 512

# SIP

## format

### SIP_HDR_MIN
* u8  fc[0]         : bit 3-0 type (0:CTRL, 1:DATA, 2: DATA_MPDU) and bit 7-4 index
* u8  fc[1]         : event ID  or flags
* u16 len

### SIP_HDR
* u8  fc[0]         : bit 3-0 type (0:CTRL, 1:DATA, 2: DATA_MPDU) and bit 7-4 index
* u8  fc[1]         : event ID or flags
* u16 len
* union u           : recycled_credits or struct sip_tx_info
* u32 seq           : sequence number

## command
*        SIP_CMD_WRITE_MEMORY,//1 ROM code
 * sip_write_memory()
 * len
 * addr
 * buf
*        SIP_CMD_READ_MEMORY,//2
*        SIP_CMD_WRITE_REG,//3 ROM code
*        SIP_CMD_READ_REG,     //4
*        SIP_CMD_BOOTUP,//5 ROM code
 * esp_download_fw()
 * boot_addr
*        SIP_CMD_INIT,          //7
 * sip_send_chip_init()
 * esp_init_data   (data in firmware file)
*        SIP_CMD_SCAN,//8
 * sip_send_scan()
 * ssid_len
 * aborted
 * n_channels
 * ie_len
 * 構造体とソースコードが不一致なような気がする　ssidのメンバ変数はないのに、コードでは設定している。
*        SIP_CMD_SETKEY,//9
 * sip_send_setkey()
 * addr
 * bssid_no
 * hw_key_idx
 * alg
 * keyidx
 * keylen
 * key
 * flags
*        SIP_CMD_CONFIG,//10
 * sip_send_config()
 * center_freq
 * duration
*        SIP_CMD_BSS_INFO_UPDATE,//11
 * sip_send_bss_info_update()
 * bssid_no
 * isassoc
 * beacon_int
 * bssid
 * sip_send_tx_data() (for FPGA)
*        SIP_CMD_LOOPBACK,//12  ROM code
 * sip_send_loopback_mblk()
 * txlen
 * rxlen
 * pack_id
*        SIP_CMD_SET_WMM_PARAM,
 * sip_send_wmm_params()
 * aci
 * aifs
 * txop_us
 * ecw_min
 * ecw_max
*        SIP_CMD_AMPDU_ACTION,
 * sip_send_ampdu_action()
 * action
 * ssn
 * index
 * win_size
 * tid
*        SIP_CMD_SLEEP,        /* for sleep testing */
 * esp_test_sleep()
 * sleep_mode
 * sleep_tm_ms
 * wakeup_tm_ms
 * sleep_times
*        SIP_CMD_WAKEUP,       /* for sleep testing */
 * esp_test_wakeup()
 * check_data
*        SIP_CMD_DEBUG,          /* for general testing */
 * esp_test_genl()
 * cmd_type
 * para_num
*        SIP_CMD_SETVIF,
 * esp_op_add_interface()
 * index
 * mac
 * set
 * op_mode  0:STA or P2P_CLIENT, 1:AP or P2P_GO
 * is_p2p   0:legacy, 1:P2P
*        SIP_CMD_SETSTA,
 * sip_send_set_sta()
 * ifidx
 * index
 * set
 * aid
 * mac
 * phymode
 * ampdu_factor
 * ampdu_density
*        SIP_CMD_PS,
 * sip_send_ps_config()
 * dtim_period
 * max_sleep_period
*        SIP_CMD_ATE,
*        SIP_CMD_SUSPEND,
 * sip_send_suspend_config()
 * suspend

## event
*        SIP_EVT_TARGET_ON = 0,    //
*        SIP_EVT_BOOTUP,//1 in ROM code
*        SIP_EVT_COPYBACK,//2
*        SIP_EVT_SCAN_RESULT,  //3
*        SIP_EVT_TX_STATUS,//4
*        SIP_EVT_CREDIT_RPT,     //5, in ROM code
*        SIP_EVT_ERROR,//6
*        SIP_EVT_LOOPBACK,//7, in ROM code
*        SIP_EVT_SNPRINTF_TO_HOST, //8  in ROM code
*        SIP_EVT_HB_ACK,  //9
*        SIP_EVT_RESET_MAC_ACK, //10
*        SIP_EVT_WAKEUP,//11        /* for sleep testing */
*        SIP_EVT_DEBUG,//12          /* for general testing */
*        SIP_EVT_PRINT_TO_HOST, //13
*        SIP_EVT_TRC_AMPDU, //14
*        SIP_EVT_ROC,              //15
*        SIP_EVT_RESETTING,
*        SIP_EVT_ATE,
*        SIP_EVT_EP,
*        SIP_EVT_INIT_EP,
*        SIP_EVT_SLEEP,
*        SIP_EVT_TXIDLE,
*        SIP_EVT_NOISEFLOOR,
*        SIP_EVT_MAX

# download firmware

## address , length
* 1st : 0xe9030000 , 0x00001040
* 2nd : 0xe9030000 , 0x00001040

## sequence
* select firmware ( 1st init or 2nd )
* check magic code of firmware header
* get number of blocks
* get load_addr
* loop
 * write data at load_addr
 * SIP_CMD_WRITE_MEMORY
* send boot command (SIP_CMD_BOOTUP)

# init procedure

# Wi-Fi Direct

# test mode

* nl80211 testmode command

## cmd
* TEST_CMD_ECHO
* TEST_CMD_ASK
* TEST_CMD_SLEEP
* TEST_CMD_LOOPBACK
* TEST_CMD_TX
* TEST_CMD_RX
* TEST_CMD_DEBUG
* TEST_CMD_SDIO_WR
* TEST_CMD_SDIO_RD
* TEST_CMD_ATE
* TEST_CMD_SDIOTEST
* TEST_CMD_SDIOSPEED


## address
* 0x14  result of noisefloor test
* 0x3d
* 0x3e
* 0x29
* 0x24
* 0x8010
* 0x9010

# Reference
* http://espressif.com/en/products/esp8089/
* https://github.com/george-hopkins/esp8089-spi
