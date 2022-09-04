# Permissions for lineage sdk services
PRODUCT_COPY_FILES += \
    vendor/axiom/config/permissions/org.axiom.globalactions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.axiom.globalactions.xml \
    vendor/axiom/config/permissions/org.axiom.hardware.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.axiom.hardware.xml \
    vendor/axiom/config/permissions/org.axiom.livedisplay.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.axiom.livedisplay.xml \
    vendor/axiom/config/permissions/org.axiom.profiles.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.axiom.profiles.xml \
    vendor/axiom/config/permissions/org.axiom.settings.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.axiom.settings.xml \
    vendor/axiom/config/permissions/org.axiom.trust.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.axiom.trust.xml

# Lineage Platform Library
PRODUCT_PACKAGES += \
    org.axiom.platform-res \
    org.axiom.platform

# AOSP has no support of loading framework resources from /system_ext
# so the SDK has to stay in /system for now
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/framework/oat/%/org.axiom.platform.odex \
    system/framework/oat/%/org.axiom.platform.vdex \
    system/framework/org.axiom.platform-res.apk \
    system/framework/org.axiom.platform.jar

ifndef LINEAGE_PLATFORM_SDK_VERSION
  # This is the canonical definition of the SDK version, which defines
  # the set of APIs and functionality available in the platform.  It
  # is a single integer that increases monotonically as updates to
  # the SDK are released.  It should only be incremented when the APIs for
  # the new release are frozen (so that developers don't write apps against
  # intermediate builds).
  LINEAGE_PLATFORM_SDK_VERSION := 9
endif

ifndef LINEAGE_PLATFORM_REV
  # For internal SDK revisions that are hotfixed/patched
  # Reset after each LINEAGE_PLATFORM_SDK_VERSION release
  # If you are doing a release and this is NOT 0, you are almost certainly doing it wrong
  LINEAGE_PLATFORM_REV := 0
endif
