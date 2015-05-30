# Wi-Fi direct memo

# Open source impretations
* wpa_supplicant
* android
* Realtek driver
* mediatek driver

# generate p2p ie

## mediatek
* mgmt/p2p_func.c
* p2pFuncGenerateP2P_IE ( IN P_ADAPTER_T prAdapter, IN BOOLEAN fgIsAssocFrame, IN PUINT_16 pu2Offset, IN PUINT_8 pucBuf, IN UINT_16 u2BufSize, IN APPEND_VAR_ATTRI_ENTRY_T arAppendAttriTable[], IN UINT_32 u4AttriTableSize)

## realtek
* https://github.com/lwfinger/rtl8188eu/blob/master/core/rtw_p2p.c
* u32 build_beacon_p2p_ie(struct wifidirect_info *pwdinfo, u8 *pbuf)

## wpa_supplicant
* p2p/p2p_group.c 
* static struct wpabuf * p2p_group_build_beacon_ie(struct p2p_group *group)

## OS X
* https://github.com/samdmarshall/OSXPrivateSDK/blob/master/PrivateSDK10.10/System/Library/PrivateFrameworks/CoreWiFi.framework/PrivateHeaders/CoreWiFiAppleP2PIE.h
* CoreWiFiAppleP2PIE
* generateIE
