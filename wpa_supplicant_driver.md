# wpa_supplicant driver

# drivers

## atheros
* .name                   = "atheros",

## bsd
* .name                   = "bsd",
* .desc                   = "BSD 802.11 support",

## hostap
* .name = "hostap",
* .desc = "Host AP driver (Intersil Prism2/2.5/3)",

## madwifi
* .name                   = "madwifi",
* .desc                   = "MADWIFI 802.11 support (Atheros, etc.)",

## ndis
* static const char *ndis_drv_name = "ndis";
* static const char *ndis_drv_desc = "Windows NDIS driver";
* wpa_driver_ndis_ops.name = ndis_drv_name;
* wpa_driver_ndis_ops.desc = ndis_drv_desc;

** nl80211
* .name = "nl80211",
* .desc = "Linux nl80211/cfg80211",

** none
* .name = "none",
* .desc = "no driver (RADIUS server/WPS ER)",

## privsep
* "privsep",
* "wpa_supplicant privilege separated driver",

## roboswitch
* .name = "roboswitch",
* .desc = "wpa_supplicant roboswitch driver",

## test
* "test",
* "wpa_supplicant test driver",

## wext
* .name = "wext",
* .desc = "Linux wireless extensions (generic)",

## wired
* .name = "wired",
* .desc = "Wired Ethernet driver",


# data

## struct wpa_driver_ops
* const char *name;
* const char *desc;
* int (*get_bssid)(void *priv, u8 *bssid);
* int (*get_ssid)(void *priv, u8 *ssid);
* int (*set_key)(const char *ifname, void *priv, enum wpa_alg alg, const u8 *addr, int key_idx, int set_tx, const u8 *seq, size_t seq_len, const u8 *key, size_t key_len);
* void * (*init)(void *ctx, const char *ifname);
* void (*deinit)(void *priv);
* int (*set_param)(void *priv, const char *param);
* int (*set_countermeasures)(void *priv, int enabled);
* int (*deauthenticate)(void *priv, const u8 *addr, int reason_code);
* int (*associate)(void *priv, struct wpa_driver_associate_params *params);
* int (*add_pmkid)(void *priv, const u8 *bssid, const u8 *pmkid);
* int (*remove_pmkid)(void *priv, const u8 *bssid, const u8 *pmkid);
* int (*flush_pmkid)(void *priv);
* int (*get_capa)(void *priv, struct wpa_driver_capa *capa);
* void (*poll)(void *priv);
* const char * (*get_ifname)(void *priv);
* const u8 * (*get_mac_addr)(void *priv);
* int (*send_eapol)(void *priv, const u8 *dest, u16 proto, const u8 *data, size_t data_len);
* int (*set_operstate)(void *priv, int state);
* int (*mlme_setprotection)(void *priv, const u8 *addr, int protect_type, int key_type);
* struct hostapd_hw_modes * (*get_hw_feature_data)(void *priv, u16 *num_modes, u16 *flags);
* int (*send_mlme)(void *priv, const u8 *data, size_t data_len, int noack);
* int (*update_ft_ies)(void *priv, const u8 *md, const u8 *ies, size_t ies_len);
* int (*send_ft_action)(void *priv, u8 action, const u8 *target_ap, const u8 *ies, size_t ies_len);
* struct wpa_scan_results * (*get_scan_results2)(void *priv);
* int (*set_country)(void *priv, const char *alpha2);
* void * (*global_init)(void);
* void (*global_deinit)(void *priv);
* void * (*init2)(void *ctx, const char *ifname, void *global_priv);
* struct wpa_interface_info * (*get_interfaces)(void *global_priv);
* int (*scan2)(void *priv, struct wpa_driver_scan_params *params);
* int (*authenticate)(void *priv, struct wpa_driver_auth_params *params);
* int (*set_ap)(void *priv, struct wpa_driver_ap_params *params);
* void * (*hapd_init)(struct hostapd_data *hapd, struct wpa_init_params *params);
* void (*hapd_deinit)(void *priv);
* int (*set_ieee8021x)(void *priv, struct wpa_bss_params *params);
* int (*set_privacy)(void *priv, int enabled);
* int (*get_seqnum)(const char *ifname, void *priv, const u8 *addr, int idx, u8 *seq);
* int (*flush)(void *priv);
* int (*set_generic_elem)(void *priv, const u8 *elem, size_t elem_len);
* int (*read_sta_data)(void *priv, struct hostap_sta_driver_data *data, const u8 *addr);
* int (*hapd_send_eapol)(void *priv, const u8 *addr, const u8 *data, size_t data_len, int encrypt, const u8 *own_addr, u32 flags);
* int (*sta_deauth)(void *priv, const u8 *own_addr, const u8 *addr, int reason);
* int (*sta_disassoc)(void *priv, const u8 *own_addr, const u8 *addr, int reason);
* int (*sta_remove)(void *priv, const u8 *addr);
* int (*hapd_get_ssid)(void *priv, u8 *buf, int len);
* int (*hapd_set_ssid)(void *priv, const u8 *buf, int len);
* int (*hapd_set_countermeasures)(void *priv, int enabled);
* int (*sta_add)(void *priv, struct hostapd_sta_add_params *params);
* int (*get_inact_sec)(void *priv, const u8 *addr);
* int (*sta_clear_stats)(void *priv, const u8 *addr);
* int (*set_freq)(void *priv, struct hostapd_freq_params *freq);
* int (*set_rts)(void *priv, int rts);
* int (*set_frag)(void *priv, int frag);
* int (*sta_set_flags)(void *priv, const u8 *addr, int total_flags, int flags_or, int flags_and); 
* int (*set_tx_queue_params)(void *priv, int queue, int aifs, int cw_min, int cw_max, int burst_time);
* int (*if_add)(void *priv, enum wpa_driver_if_type type, const char *ifname, const u8 *addr, void *bss_ctx, void **drv_priv, char *force_ifname, u8 *if_addr, const char *bridge);
* int (*if_remove)(void *priv, enum wpa_driver_if_type type, const char *ifname);
* int (*set_sta_vlan)(void *priv, const u8 *addr, const char *ifname, int vlan_id);
* int (*commit)(void *priv);
* int (*send_ether)(void *priv, const u8 *dst, const u8 *src, u16 proto, const u8 *data, size_t data_len);
* int (*set_radius_acl_auth)(void *priv, const u8 *mac, int accepted, u32 session_timeout);
* int (*set_radius_acl_expire)(void *priv, const u8 *mac);
* int (*set_ap_wps_ie)(void *priv, const struct wpabuf *beacon, const struct wpabuf *proberesp, const struct wpabuf *assocresp);
* int (*set_supp_port)(void *priv, int authorized);
* int (*set_wds_sta)(void *priv, const u8 *addr, int aid, int val, const char *bridge_ifname);
* int (*send_action)(void *priv, unsigned int freq, unsigned int wait, const u8 *dst, const u8 *src, const u8 *bssid, const u8 *data, size_t data_len, int no_cck);
* void (*send_action_cancel_wait)(void *priv);
* int (*remain_on_channel)(void *priv, unsigned int freq, unsigned int duration);
* int (*cancel_remain_on_channel)(void *priv);
* int (*probe_req_report)(void *priv, int report);
* int (*deinit_ap)(void *priv);
* int (*deinit_p2p_cli)(void *priv);
* void (*suspend)(void *priv);
* void (*resume)(void *priv);
* int (*signal_monitor)(void *priv, int threshold, int hysteresis);
* int (*send_frame)(void *priv, const u8 *data, size_t data_len, int encrypt);
* int (*shared_freq)(void *priv);
* int (*get_noa)(void *priv, u8 *buf, size_t buf_len);
* int (*set_noa)(void *priv, u8 count, int start, int duration);
* int (*set_p2p_powersave)(void *priv, int legacy_ps, int opp_ps, int ctwindow);
* int (*ampdu)(void *priv, int ampdu);
* const char * (*get_radio_name)(void *priv);
* int (*p2p_find)(void *priv, unsigned int timeout, int type);
* int (*p2p_stop_find)(void *priv);
* int (*p2p_listen)(void *priv, unsigned int timeout);
* int (*p2p_connect)(void *priv, const u8 *peer_addr, int wps_method, int go_intent, const u8 *own_interface_addr, unsigned int force_freq, int persistent_group);
* int (*wps_success_cb)(void *priv, const u8 *peer_addr);
* int (*p2p_group_formation_failed)(void *priv);
* int (*p2p_set_params)(void *priv, const struct p2p_params *params);
* int (*p2p_prov_disc_req)(void *priv, const u8 *peer_addr, u16 config_methods, int join);
* u64 (*p2p_sd_request)(void *priv, const u8 *dst, const struct wpabuf *tlvs);
* int (*p2p_sd_cancel_request)(void *priv, u64 req);
* int (*p2p_sd_response)(void *priv, int freq, const u8 *dst, u8 dialog_token, const struct wpabuf *resp_tlvs);
* int (*p2p_service_update)(void *priv);
* int (*p2p_reject)(void *priv, const u8 *addr);
* int (*p2p_invite)(void *priv, const u8 *peer, int role, const u8 *bssid, const u8 *ssid, size_t ssid_len, const u8 *go_dev_addr, int persistent_group);
* int (*send_tdls_mgmt)(void *priv, const u8 *dst, u8 action_code, u8 dialog_token, u16 status_code, const u8 *buf, size_t len);
* int (*tdls_oper)(void *priv, enum tdls_oper oper, const u8 *peer);
* int (*wnm_oper)(void *priv, enum wnm_oper oper, const u8 *peer, u8 *buf, u16 *buf_len);
* int (*signal_poll)(void *priv, struct wpa_signal_info *signal_info);
* int (*set_authmode)(void *priv, int authmode);
* void (*set_rekey_info)(void *priv, const u8 *kek, const u8 *kck, const u8 *replay_ctr);
* int (*sta_assoc)(void *priv, const u8 *own_addr, const u8 *addr, int reassoc, u16 status, const u8 *ie, size_t len);
* int (*sta_auth)(void *priv, const u8 *own_addr, const u8 *addr, u16 seq, u16 status, const u8 *ie, size_t len);
* int (*add_tspec)(void *priv, const u8 *addr, u8 *tspec_ie, size_t tspec_ielen);
* int (*add_sta_node)(void *priv, const u8 *addr, u16 auth_alg);
* int (*sched_scan)(void *priv, struct wpa_driver_scan_params *params, u32 interval);
* int (*stop_sched_scan)(void *priv);
* void (*poll_client)(void *priv, const u8 *own_addr, const u8 *addr, int qos);
* int (*radio_disable)(void *priv, int disabled);
* int (*switch_channel)(void *priv, unsigned int freq);







# files

## driver.c

