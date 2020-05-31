THEOS_DEVICE_IP = 10.0.0.76

ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = changingCCUIContentContainerView

changingCCUIContentContainerView_FILES = Tweak.xm
changingCCUIContentContainerView_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
