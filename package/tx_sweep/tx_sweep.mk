################################################################################
#
# ad936x_ref_cal
#
################################################################################


TX_SWEEP_SITE = package/tx_sweep
TX_SWEEP_SITE_METHOD = local
TX_SWEEP_DEPENDENCIES = libiio

define TX_SWEEP_BUILD_CMDS
	$(TARGET_CC) $(TARGET_CFLAGS) $(TARGET_LDFLAGS) \
		$(@D)/tx_sweep.c -o $(@D)/tx_sweep -lm -lpthread -liio
endef

define TX_SWEEP_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(@D)/tx_sweep $(TARGET_DIR)/usr/sbin/tx_sweep
endef

$(eval $(generic-package))
