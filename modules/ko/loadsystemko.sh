!/bin/sh
${CVI_SHOPTS}
#
# Start to insert kernel modules
#
insmod ./cv181x_sys.ko
insmod ./cv181x_base.ko
#insmod ./cv181x_rtos_cmdqu.ko
#insmod ./cv181x_fast_image.ko
insmod ./cvi_mipi_rx.ko
insmod ./snsr_i2c.ko
#insmod ./cv181x_vi.ko
insmod ./cv181x_vpss.ko
insmod ./cv181x_dwa.ko
insmod ./cv181x_vo.ko
#insmod ./cv181x_mipi_tx.ko
insmod ./cv181x_rgn.ko

#insmod ./cv181x_wdt.ko
insmod ./cv181x_clock_cooling.ko
insmod ./cv181x_saradc.ko
insmod ./cv181x_pwm.ko
#insmod ./cv181x_tpu.ko
#insmod ./cv181x_vcodec.ko
#insmod ./cv181x_jpeg.ko
#insmod ./cvi_vc_driver.ko MaxVencChnNum=9 MaxVdecChnNum=9
#insmod ./cv181x_rtc.ko
#insmod ./cv181x_ive.ko

echo 3 > /proc/sys/vm/drop_caches
dmesg -n 4

#usb hub control
#/etc/uhubon.sh host

exit $?
