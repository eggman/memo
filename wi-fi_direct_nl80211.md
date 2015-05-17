# Wi-Fi direct API of NL80211
NL80211 is one of Linux kernel Wi-Fi APIs.


## set iftype
nla_put_u32(pskb, NL80211_ATTR_IFTYPE, iftype));

     NL80211_IFTYPE_P2P_CLIENT,
     NL80211_IFTYPE_P2P_GO,
     NL80211_IFTYPE_P2P_DEVICE,


## start P2P
nl80211_cmd_msg(bss, 0, NL80211_CMD_START_P2P_DEVICE);

## stop P2P
nl80211_cmd_msg(bss, 0, NL80211_CMD_STOP_P2P_DEVICE);

## concurrent operation
NL80211_FREQUENCY_ATTR_GO_CONCURRENT

## CT window setting
NL80211_FEATURE_P2P_GO_CTWIN

## opportunistic powersave
NL80211_FEATURE_P2P_GO_OPPPS
