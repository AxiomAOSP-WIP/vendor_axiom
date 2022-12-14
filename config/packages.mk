#
# Copyright (C) 2022 AxioOS
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
#

# AxiomoS PACKAGES
PRODUCT_PACKAGES += \
    ViaBrowser \
    AxiomPrivacyGuard \
    Etar \
    SimpleDeviceConfig \
    PdfViewer \
    Updater \
    Aperture

# Themes
PRODUCT_PACKAGES += \
		AndroidBlackThemeOverlay

# Permissions for axiompricavy AxiomPrivacyGuard
PRODUCT_COPY_FILES += \
		vendor/axiom/prebuilt/common/apps/privapp_whitelist_com.axiomos.axiomprivacybeta.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp_whitelist_com.axiomos.axiomprivacybeta.xml
