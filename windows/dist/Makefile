
WIX_BUILD_DIR=wix

WIX_SOURCE=YesWorkflow.wxs
WIX_OBJECT=$(WIX_BUILD_DIR)/YesWorkflow.wixobj
INSTALLER_MSI=$(WIX_BUILD_DIR)/YesWorkflow.msi

all: $(INSTALLER_MSI)

$(WIX_OBJECT): $(WIX_SOURCE)
	mkdir -p -v $(WIX_BUILD_DIR) 
	candle.exe -v -pedantic -ext WiXUIExtension -out $(WIX_OBJECT) $(WIX_SOURCE) \
		| tee $(WIX_BUILD_DIR)/candle.log

$(INSTALLER_MSI): $(WIX_OBJECT)
	light.exe -v -ext WixUIExtension -out $(INSTALLER_MSI) $(WIX_OBJECT) \
		| tee $(WIX_BUILD_DIR)/light.log | grep error

clean:
	rm -rf $(WIX_BUILD_DIR)