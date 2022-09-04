# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
# Copyright (C) 2022 AxiomOS

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

# -----------------------------------------------------------------
# Axiom OTA update package

AXIOM_TARGET_PACKAGE := $(PRODUCT_OUT)/axiom-$(AXIOM_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(AXIOM_TARGET_PACKAGE)
	$(hide) $(SHA256) $(AXIOM_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(AXIOM_TARGET_PACKAGE).sha256sum
	@echo -e "==================================="
	@echo -e "Build AxiomOS Tesla finished ;-)"
	@echo -e "Package details:"
	@echo -e "Package: $(AXIOM_TARGET_PACKAGE)"
	@echo -e "Axiom Version: $(AXIOM_VERSION)"
	@echo "Size: `du -sh $(AXIOM_TARGET_PACKAGE) | awk '{print $$1}' `"
	@echo -e "Checksum: `cat $(AXIOM_TARGET_PACKAGE).sha256sum | awk '{ print $$1 }'`"
