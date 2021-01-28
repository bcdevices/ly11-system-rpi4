fdt addr ${fdt_addr} && fdt get value bootargs /chosen bootargs
fatload mmc 0:1 ${fit_addr} image.fit
booti ${kernel_addr} - ${fit_addr}
