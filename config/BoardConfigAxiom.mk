include vendor/axiom/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/axiom/config/BoardConfigQcom.mk
endif

include vendor/axiom/config/BoardConfigSoong.mk
