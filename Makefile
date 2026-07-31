TARGET := iphone:clang:latest:15.0
ARCHS = arm64 arm64e

include $(THEOS_PATH)/makefiles/common.mk

TWEAK_NAME = NSFWEnable

NSFWEnable_FILES = Tweak.x
NSFWEnable_CFLAGS = -fobjc-arc
NSFWEnable_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries

include $(THEOS_PATH)/makefiles/tweak.mk
