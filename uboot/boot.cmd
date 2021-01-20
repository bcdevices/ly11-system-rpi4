boot_fit=bootm ${fit_addr}
fit_addr=0x1F000000
load_fit=fatload mmc 0:1 ${fit_addr} image.fit
mmcboot=run load_fit; run set_bootargs_tty set_bootargs_mmc set_common_args; run boot_fit
