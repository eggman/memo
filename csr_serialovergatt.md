# CSR SerialOverGATT

CSR SerialOverGATT is propriety BLE profile.

* SERVER : BLE Peripheral : Serial RX
* CLIENT : BLE Central    : Serial TX

# SERVER
## Service
* GATT_SERVICE
** SERVICE_CHANGED : indicate
*** SERVICE_CHANGED_CLIENT_CONFIG : flag
* GAP_SERVICE
** DEVICE_NAME : read
** DEVICE_APPEARANCE : read
* SERIAL_SERVICE
** SERIAL_DATA_TRANSFER : write_cmd, notify

# CLIENT
## initial connection parameer
HIGH
* #define PREFERRED_MAX_CON_INTERVAL_HIGH       0x0006 /* 7.5 ms */
* #define PREFERRED_MIN_CON_INTERVAL_HIGH       0x0006 /* 7.5 ms */
* #define PREFERRED_SLAVE_LATENCY               0x0000 /* 0 conn_intervals */
* #define PREFERRED_SUPERVISION_TIMEOUT_HIGH    0x0A  /* 100 ms */
LOW
* #define PREFERRED_MAX_CON_INTERVAL_LOW        0x003C /* 75 ms */
* #define PREFERRED_MIN_CON_INTERVAL_LOW        0x003C /* 75 ms */
* #define PREFERRED_SLAVE_LATENCY               0x0000 /* 0 conn_intervals */
* #define PREFERRED_SUPERVISION_TIMEOUT_LOW     0x02D /* 450 ms */

# Reference
* https://github.com/NemProjects/CSR1010-MMA9550/tree/master/apps/serial_over_gatt_client
* https://github.com/NemProjects/CSR1010-MMA9550/tree/master/apps/serial_over_gatt_server
