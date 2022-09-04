# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/axiom/config/common.mk)

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Apps
PRODUCT_PACKAGES += \
    Backgrounds \
    Eleven \
    Etar \
    ExactCalculator \
    Jelly \
    Profiles \
    Seedvault

ifneq ($(TARGET_EXCLUDES_AUDIOFX),true)
PRODUCT_PACKAGES += \
    AudioFX
endif

ifeq ($(PRODUCT_TYPE), go)
PRODUCT_PACKAGES += \
		Launcher3QuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
		Launcher3QuickStep
else
PRODUCT_PACKAGES += \
		Launcher3QuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
		Launcher3QuickStep
endif


ifneq ($(WITH_LINEAGE_CHARGER),false)
PRODUCT_PACKAGES += \
    lineage_charger_animation
endif


# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
