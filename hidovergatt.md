# HID over GATT

# Topology
* HID Device is GAP Peripheral role.
* Boot Host is GAP Central role.
* Report Host is GAP Central role.

# Service
```
* Device Information Service
* Battry Service
* HID_SERVICE
** HID_INFORMATION : read
*** FLAG_IRQ FLAG_ENCR_R
*** HID_FLAG_CLASS_SPEC_RELEASE HID_FLAG_COUNTRY_CODE HID_INFO_FLAGS
** HID_REPORT_MAP : read
*** FLAG_IRQ FLAG_ENCR_R
** HID_BOOT_INPUT_REPORT : read notify
** HID_BOOT_OUTPUT_REPORT : read write write_cmd
** HID_INPUT_REPORT : read notify
** HID_CONSUMER_REPORT : read notify
** HID_OUTPUT_REPORT : read write write_cmd
** HID_CONTROL_POINT : write_cmd
** HID_PROTOCOL_MODE : read write_cmd
```

# Test
## PTS
* TC_HGDS_HH_BV_01_I
* TC_HGDS_HH_BV_02_I
* TC_HGDS_HH_BV_03_I
* TC_HGDR_RH_BV_01_I
* TC_HGDC_RH_BV_01_I
* TC_HGDC_RH_BV_02_I
* TC_HGDC_RH_BV_03_I
* TC_HGDC_RH_BV_04_I
* TC_HGDC_RH_BV_05_I
* TC_HGDC_RH_BV_06_I
* TC_HGDC_RH_BV_07_I
* TC_HGDC_HH_BV_08_I
* TC_HGDC_HH_BV_14_I
* TC_HGDC_HH_BV_15_I
* TC_HGDC_HH_BV_16_I
* TC_HGRF_RH_BV_01_I
* TC_HGRF_RH_BV_02_I
* TC_HGRF_RH_BV_03_I
* TC_HGRF_RH_BV_04_I
* TC_HGRF_RH_BV_05_I
* TC_HGRF_RH_BV_19_I
* TC_HGRF_RH_BV_06_I
* TC_HGRF_RH_BV_07_I
* TC_HGRF_RH_BV_08_I
* TC_HGRF_RH_BV_09_I
* TC_HGRF_HH_BV_10_I
* TC_HGRF_HH_BV_11_I
* TC_HGRF_HH_BV_12_I
* TC_HGWF_RH_BV_01_I
* TC_HGWF_RH_BV_02_I
* TC_HGWF_RH_BV_03_I
* TC_HGWF_RH_BV_04_I
* TC_HGCF_RH_BV_01_I
* TC_HGCF_RH_BV_02_I
* TC_HGNF_RH_BV_01_I
* TC_HGNF_RH_BI_01_I
* TC_HGNF_RH_BI_01_I

# sample code
## Bluedroid
* https://android.googlesource.com/platform/external/bluetooth/bluedroid/+/master/bta/hh/bta_hh_le.c
## BlueZ
* http://git.kernel.org/cgit/bluetooth/bluez.git/tree/profiles/input/hog.c 
## CSR CSR101x
* https://github.com/NemProjects/CSR1010-MMA9550/tree/master/apps/keyboard
## Nordic nRF51
* https://github.com/roboTJ101/nRF51_SDK_8.1.0/tree/master/examples/ble_peripheral/ble_app_hids_keyboard
## NXP QN902x
* https://bitbucket.org/T-Firefly/fireble/src/3c2db2d397b91252569efd4ce07ab7300feac4f5/BLE/src/app/hogpd/?at=master
* https://bitbucket.org/T-Firefly/fireble/src/3c2db2d397b91252569efd4ce07ab7300feac4f5/BLE/prj_hids/src/?at=master
## TI CC254x
* https://github.com/killets/ThermometerBLE/tree/master/BLE-CC254x-1.4.1.43908_copy/Projects/ble/HIDAdvRemote
* https://github.com/killets/ThermometerBLE/tree/master/BLE-CC254x-1.4.1.43908_copy/Projects/ble/HIDAdvRemoteDongle

# Reference
* https://developer.bluetooth.org/TechnologyOverview/Pages/HOGP.aspx
* HID OVER GATT PROFILE SPECIFICATION V10r00
* HID SERVICE SPECIFICATION V10r00
* http://git.kernel.org/cgit/bluetooth/bluez.git/tree/android/pts-hogp.txt
