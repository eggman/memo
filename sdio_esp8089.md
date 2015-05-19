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
*        SIP_CMD_GET_VER = 0,
*        SIP_CMD_WRITE_MEMORY,//1 ROM code
*        SIP_CMD_READ_MEMORY,//2
*        SIP_CMD_WRITE_REG,//3 ROM code
*        SIP_CMD_READ_REG,     //4
*        SIP_CMD_BOOTUP,//5 ROM code
*        SIP_CMD_COPYBACK,//6
*        SIP_CMD_INIT,          //7
*        SIP_CMD_SCAN,//8
*        SIP_CMD_SETKEY,//9
*        SIP_CMD_CONFIG,//10
*        SIP_CMD_BSS_INFO_UPDATE,//11
*        SIP_CMD_LOOPBACK,//12  ROM code
*        SIP_CMD_SET_WMM_PARAM,
*        SIP_CMD_AMPDU_ACTION,
*        SIP_CMD_HB_REQ, //15
*        SIP_CMD_RESET_MAC, //16
*        SIP_CMD_PRE_DOWN,  //17
*        SIP_CMD_SLEEP,        /* for sleep testing */
*        SIP_CMD_WAKEUP,       /* for sleep testing */
*        SIP_CMD_DEBUG,          /* for general testing */
*        SIP_CMD_GET_FW_VER,  /* get fw rev. */
*        SIP_CMD_SETVIF,
*        SIP_CMD_SETSTA,
*        SIP_CMD_PS,
*        SIP_CMD_ATE,
*        SIP_CMD_SUSPEND,
*        SIP_CMD_MAX,

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
* select firmware ( 1st init or 2nd )
* check magic code of firmware header
* get number of blocks
* get load_addr
* loop
** write data at load_addr
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


# address
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
