boot_fit=bootm ${fit_addr}
fdt addr ${fdt_addr} && fdt get value bootargs /chosen bootargs
fit_addr=0x1F000000
fatload mmc 0:1 ${fit_addr} image.fit
run boot_fit
