# SDIO on ESP8089

# command

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
