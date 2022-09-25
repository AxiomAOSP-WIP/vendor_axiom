# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# AxiomOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.axiom.version=$(RO_AXIOM_VERSION) \
		ro.modversion=$(RO_AXIOM_VERSION) \
    ro.axiom.releasetype=$(AXIOM_BUILDTYPE) \
    ro.axiom.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
		ro.axiom.builddate=$(AXIOM_BUILD_DATE) \
    ro.axiomlegal.url=https://axiomos.pl/legal

# AxiomOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.axiom.display.version=$(AXIOM_DISPLAY_VERSION)

# AxiomOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.axiom.build.version.plat.sdk=$(AXIOM_PLATFORM_SDK_VERSION)

# AxiomOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.axiom.build.version.plat.rev=$(AXIOM_PLATFORM_REV)
