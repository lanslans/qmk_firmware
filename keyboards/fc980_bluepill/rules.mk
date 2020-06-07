# MCU name
MCU = STM32F103

# GENERIC STM32F103C8T6 board - stm32duino bootloader
OPT_DEFS = -DCORTEX_VTOR_INIT=0x2000
MCU_LDSCRIPT = STM32F103x8_stm32duino_bootloader
BOARD = STM32_F103_STM32DUINO

# XYZ bootloader
#DFU_ARGS = -d 6b62:0000 -R
#stm32duino bootloader
DFU_ARGS = -d 1eaf:0003 -a2 -R
DFU_SUFFIX_ARGS = -v 1eaf

# project specific files
VPATH += keyboards/fc980_bluepill/bluepill
SRC =	keyboard.c

#BOOTMAGIC_ENABLE = yes	# Virtual DIP switch configuration
MOUSEKEY_ENABLE = no	# Mouse keys
EXTRAKEY_ENABLE = yes	# Audio control and System control
CONSOLE_ENABLE = yes	# Console for debug
COMMAND_ENABLE = yes    # Commands for debug and configuration
SLEEP_LED_ENABLE = no  # Breathing sleep LED during USB suspend
NKRO_ENABLE = yes	      # USB Nkey Rollover
BACKLIGHT_ENABLE = no
RGBLIGHT_ENABLE = no

# Enter lower-power sleep mode when on the ChibiOS idle thread
OPT_DEFS += -DCORTEX_ENABLE_WFI_IDLE=TRUE
