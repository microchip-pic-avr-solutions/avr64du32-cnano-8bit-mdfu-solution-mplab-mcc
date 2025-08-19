#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-xc8.mk)" "nbproject/Makefile-local-xc8.mk"
include nbproject/Makefile-local-xc8.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=xc8
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/bootloader/example/bl_example.c mcc_generated_files/bootloader/library/com_adapter/com_adapter.c mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c mcc_generated_files/bootloader/library/core/bl_memory.c mcc_generated_files/bootloader/library/core/bl_app_verify.c mcc_generated_files/bootloader/library/core/bl_interrupt.c mcc_generated_files/bootloader/library/core/bl_core.c mcc_generated_files/bootloader/library/core/bl_image_manager.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/reset/src/rstctrl.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/timer/src/delay.c mcc_generated_files/uart/src/usart1.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=mcc_generated_files/bootloader/example/bl_example.c mcc_generated_files/bootloader/library/com_adapter/com_adapter.c mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c mcc_generated_files/bootloader/library/core/bl_memory.c mcc_generated_files/bootloader/library/core/bl_app_verify.c mcc_generated_files/bootloader/library/core/bl_interrupt.c mcc_generated_files/bootloader/library/core/bl_core.c mcc_generated_files/bootloader/library/core/bl_image_manager.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/reset/src/rstctrl.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/timer/src/delay.c mcc_generated_files/uart/src/usart1.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-xc8.mk ${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=AVR64DU32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o: mcc_generated_files/bootloader/example/bl_example.c  .generated_files/flags/xc8/72c15ec8bd34b601ef78f20ccc54a5688d545b52 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/example" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o mcc_generated_files/bootloader/example/bl_example.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o: mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  .generated_files/flags/xc8/ec48e532d23880b9b08528d5b43497145454e0e .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o mcc_generated_files/bootloader/library/com_adapter/com_adapter.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o: mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  .generated_files/flags/xc8/cc7f4a0fd0041822801cb4f62f7ffb9671385e6e .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o: mcc_generated_files/bootloader/library/core/bl_memory.c  .generated_files/flags/xc8/fa6e68308fe5bc75fba9883374dc61cb1c1ffea3 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o mcc_generated_files/bootloader/library/core/bl_memory.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o: mcc_generated_files/bootloader/library/core/bl_app_verify.c  .generated_files/flags/xc8/fbb5a0296cb9237bd086e508b42d309bc39b8911 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o mcc_generated_files/bootloader/library/core/bl_app_verify.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o: mcc_generated_files/bootloader/library/core/bl_interrupt.c  .generated_files/flags/xc8/f3ec4f8f34e0bedc371dfa711a540423c38a85b3 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o mcc_generated_files/bootloader/library/core/bl_interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o: mcc_generated_files/bootloader/library/core/bl_core.c  .generated_files/flags/xc8/e246dc28385026538a9ba1bc0daea578793f5b95 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o mcc_generated_files/bootloader/library/core/bl_core.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o: mcc_generated_files/bootloader/library/core/bl_image_manager.c  .generated_files/flags/xc8/9a3f5ec6cdd8b8b3cd6cb89aacf57762f7e999a1 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o mcc_generated_files/bootloader/library/core/bl_image_manager.c 
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/xc8/8651af9c876a4ba3ff6ad49b6e69afedf66a24fb .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c 
	
${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o: mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/xc8/2daa3cfc3aa7c8d8699680da7b5ae1191e9173af .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/reset/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o -o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o mcc_generated_files/reset/src/rstctrl.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/xc8/560f008147ea6e3382b4dda8afe392dad69fff8f .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/xc8/19b040ff87ef92818918be0a4f8b7fbf7c34e1a .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/xc8/2d3c18b23b66c668aa91f9e648bc0bcd72e808e8 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/xc8/91de620f40c7a20781166af8a7669fc52ff9a5c .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/xc8/84b0521ea9385864df69c63365be3c06891064fa .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.o: mcc_generated_files/timer/src/delay.c  .generated_files/flags/xc8/ea84879d3065bb4972dfde0d4cb1ca715f1d1f89 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o mcc_generated_files/timer/src/delay.c 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/xc8/331c6ff1329b8585b646c5110c4a1b18aa4c2493 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/xc8/2a7eb8c9cc9306d421c0f06a52cdadc0327adcdf .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
else
${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o: mcc_generated_files/bootloader/example/bl_example.c  .generated_files/flags/xc8/fad0a9dc9f5ca8f304b36a511b46664b49e19092 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/example" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o mcc_generated_files/bootloader/example/bl_example.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o: mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  .generated_files/flags/xc8/e7742c027550dd4b9c030e259ab22773a516db51 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o mcc_generated_files/bootloader/library/com_adapter/com_adapter.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o: mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  .generated_files/flags/xc8/cfcbe0f01855c8f3ee48ff08c8b753e6d1045c7b .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o: mcc_generated_files/bootloader/library/core/bl_memory.c  .generated_files/flags/xc8/3d1303888cf34d112190cbeefe48385dda37d63c .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o mcc_generated_files/bootloader/library/core/bl_memory.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o: mcc_generated_files/bootloader/library/core/bl_app_verify.c  .generated_files/flags/xc8/1ecf30767296101f0278d429034e5b36819eb0d0 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o mcc_generated_files/bootloader/library/core/bl_app_verify.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o: mcc_generated_files/bootloader/library/core/bl_interrupt.c  .generated_files/flags/xc8/91a6ca53432f13427583b8899e63a8bc1993f9e5 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o mcc_generated_files/bootloader/library/core/bl_interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o: mcc_generated_files/bootloader/library/core/bl_core.c  .generated_files/flags/xc8/7f09505576dc9d7e38aaf4d5dd1fbf51b24b78be .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o mcc_generated_files/bootloader/library/core/bl_core.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o: mcc_generated_files/bootloader/library/core/bl_image_manager.c  .generated_files/flags/xc8/e6329e03f22c4bcee0212d5bbb86bd28401f2557 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o mcc_generated_files/bootloader/library/core/bl_image_manager.c 
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/xc8/328cc221e545e45a1bd528b19a5cfe9d951b526c .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c 
	
${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o: mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/xc8/677bbc64861a950de15efe691fd1cd4df00eb718 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/reset/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o -o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o mcc_generated_files/reset/src/rstctrl.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/xc8/b6f294936fa88e17cdf3328814f705ee43122323 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/xc8/304092297dab2bcf7f98a7f97557ee44d5800135 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/xc8/49fb96f13f862668c8563b5ea12fec07f74b4b43 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/xc8/82b69f901822a41db0d3b8624595fc30d0e18a63 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/xc8/c8754eba043de83aa65082a52202eda4c96db41d .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.o: mcc_generated_files/timer/src/delay.c  .generated_files/flags/xc8/26e09f044e6bda2b418924033b4a30fd86a6d39c .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o mcc_generated_files/timer/src/delay.c 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/xc8/c7cadab17d5cdce42cc733b57113d0ab662fa9dc .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/xc8/1eb2b2874c311acb00ea2fd4944c94621d3520d8 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/xc8/f775fa1914cfce9a127282798dbfba061ec2b76 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/xc8/661910ef0cd7df29f77ee55231662208c4f86a53 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.map  -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}/avr-objcopy -O ihex "${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.hex"
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
