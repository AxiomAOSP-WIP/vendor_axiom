# Copyright (C) 2021 The Proton AOSP Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := vendor/axiom/fonts

# Copy font files
include vendor/axiom/fonts/font_files.mk
-include vendor/axiom/fonts/extra/extra.mk

# Register custom fonts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml \

# Overlays for UI font styles
PRODUCT_PACKAGES += \
    CutiveMono.ttf \
    DroidSansMono.ttf \
    RobotoFallback-BlackItalic.ttf \
    RobotoFallback-Black.ttf \
    RobotoFallback-BoldItalic.ttf \
    RobotoFallback-Bold.ttf \
    RobotoFallback-Italic.ttf \
    RobotoFallback-LightItalic.ttf \
    RobotoFallback-Light.ttf \
    RobotoFallback-MediumItalic.ttf \
    RobotoFallback-Medium.ttf \
    RobotoFallback-Regular.ttf \
    RobotoFallback-ThinItalic.ttf \
    RobotoFallback-Thin.ttf \
    Roboto-BlackItalic.ttf \
    Roboto-Black.ttf \
    Roboto-BoldItalic.ttf \
    Roboto-Bold.ttf \
    Roboto-Italic.ttf \
    Roboto-LightItalic.ttf \
    Roboto-Light.ttf \
    Roboto-MediumItalic.ttf \
    Roboto-Medium.ttf \
    Roboto-Regular.ttf \
    Roboto-ThinItalic.ttf \
    Roboto-Thin.ttf \
    NotoSerif-BoldItalic.ttf \
    NotoSerif-Bold.ttf \
    NotoSerif-Italic.ttf \
    NotoSerif-Regular.ttf \

# Include extra addon fonts
-include vendor/axiom/fonts/extra/extra.mk
