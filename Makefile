TARGET := iphone:clang:latest:15.0
ARCHS = arm64 arm64e

include $(THEOS_PATH)/makefiles/common.mk

TWEAK_NAME = NSFWEnable

NSFWEnable_FILES = Tweak.x
NSFWEnable_CFLAGS = -fobjc-arc

include $(THEOS_PATH)/makefiles/tweak.mk
