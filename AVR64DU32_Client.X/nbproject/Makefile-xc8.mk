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
FINAL_IMAGE=${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/bootloader/example/bl_example.c mcc_generated_files/bootloader/library/com_adapter/com_adapter.c mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c mcc_generated_files/bootloader/library/core/bl_memory.c mcc_generated_files/bootloader/library/core/bl_app_verify.c mcc_generated_files/bootloader/library/core/bl_interrupt.c mcc_generated_files/bootloader/library/core/bl_core.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/timer/src/delay.c mcc_generated_files/uart/src/usart1.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=mcc_generated_files/bootloader/example/bl_example.c mcc_generated_files/bootloader/library/com_adapter/com_adapter.c mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c mcc_generated_files/bootloader/library/core/bl_memory.c mcc_generated_files/bootloader/library/core/bl_app_verify.c mcc_generated_files/bootloader/library/core/bl_interrupt.c mcc_generated_files/bootloader/library/core/bl_core.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/timer/src/delay.c mcc_generated_files/uart/src/usart1.c main.c



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
	${MAKE}  -f nbproject/Makefile-xc8.mk ${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=AVR64DU32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o: mcc_generated_files/bootloader/example/bl_example.c  .generated_files/flags/xc8/b13c96b93479e5284282ab165e6e025cadbc8c16 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/example" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o mcc_generated_files/bootloader/example/bl_example.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o: mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  .generated_files/flags/xc8/bff3b69c1750eae0e57e78c7de021bcac9e85154 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o mcc_generated_files/bootloader/library/com_adapter/com_adapter.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o: mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  .generated_files/flags/xc8/7f05b7adc1c849d1b1b349725ebe4e77864ed5f6 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o: mcc_generated_files/bootloader/library/core/bl_memory.c  .generated_files/flags/xc8/44362c3b752cfcad087c00476d216e512d5b491d .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o mcc_generated_files/bootloader/library/core/bl_memory.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o: mcc_generated_files/bootloader/library/core/bl_app_verify.c  .generated_files/flags/xc8/34cdfa0b973e96e79d07ee23001215dc386664f5 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o mcc_generated_files/bootloader/library/core/bl_app_verify.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o: mcc_generated_files/bootloader/library/core/bl_interrupt.c  .generated_files/flags/xc8/860c59f7b29aecda59cf79e6fc61d82ce1678adb .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o mcc_generated_files/bootloader/library/core/bl_interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o: mcc_generated_files/bootloader/library/core/bl_core.c  .generated_files/flags/xc8/500acdb5c1279984c31c1328e0d5e71db5bbde04 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o mcc_generated_files/bootloader/library/core/bl_core.c 
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/xc8/860aac4222243ee932903fab84a9e7ce04b2a81 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/xc8/f442a039e2aec0170ec755b349e5c72ae2e6ffb6 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/xc8/347445225b019caabc327d8a69e7811be1624ed1 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/xc8/b33e7b28dd7b24029d5c60e5e098a8ef1114d892 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/xc8/a39a3850aa0de6294f97312a9148caa58ee8ac8a .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/xc8/18b874533c65605a71d4522046458f319b6bbcd .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.o: mcc_generated_files/timer/src/delay.c  .generated_files/flags/xc8/47ccd117542fbf46dd51283ef6661f60bf2a18df .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o mcc_generated_files/timer/src/delay.c 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/xc8/a1dc31bbbefd4f0080554142b951c1d501a41652 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/xc8/6595fb99a778a6ed3641a6d66ec7227933f00d5e .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
else
${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o: mcc_generated_files/bootloader/example/bl_example.c  .generated_files/flags/xc8/3314db546761913a6170528c6aadd4130e381441 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/example" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o mcc_generated_files/bootloader/example/bl_example.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o: mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  .generated_files/flags/xc8/edc34922deafb8572c7cd73ca1196570f019dfe9 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o mcc_generated_files/bootloader/library/com_adapter/com_adapter.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o: mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  .generated_files/flags/xc8/c5dafc048725356b3764dbf086cb69317820507c .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o: mcc_generated_files/bootloader/library/core/bl_memory.c  .generated_files/flags/xc8/e7a3753d7d686774d58754864bc24c0a80a31b8e .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o mcc_generated_files/bootloader/library/core/bl_memory.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o: mcc_generated_files/bootloader/library/core/bl_app_verify.c  .generated_files/flags/xc8/6a9b8c0a5683d488eeef421f180f94600f2311b3 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o mcc_generated_files/bootloader/library/core/bl_app_verify.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o: mcc_generated_files/bootloader/library/core/bl_interrupt.c  .generated_files/flags/xc8/178600fbb9b85c2ddfcc762623a6ea1491da2e69 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o mcc_generated_files/bootloader/library/core/bl_interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o: mcc_generated_files/bootloader/library/core/bl_core.c  .generated_files/flags/xc8/dbf89b308b66c26fc65daa72c1d6af36329e2e5 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o mcc_generated_files/bootloader/library/core/bl_core.c 
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/xc8/86c265fd245804af1e509d249a0f5d6b513fcf64 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/xc8/db9121f07f27c645d1a0486e48707ccd885c9e9d .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/xc8/5bd6aab9212aebfb301ce5aae2bbb5552eeac7e0 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/xc8/1789cc792210ed018a81447eb0a94a590b24ae72 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/xc8/d43bb4964082fbe36b7ad77131f2a19b3728c14c .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/xc8/ef58d30722fe4c43ae74a3ec7bf062b5946fcf58 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.o: mcc_generated_files/timer/src/delay.c  .generated_files/flags/xc8/dad2bd1848b583becbf2001da85702e07807c6b5 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o mcc_generated_files/timer/src/delay.c 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/xc8/8cdb9363f06e61cf37dc3d4386330ce1bd260e52 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/xc8/ad2ae5a7b28386e863d572ce8a6d5c77ccf2711 .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/xc8/e1724904d70ce2acb83a3f491ff078a57437216c .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/xc8/b62a0e661d2b13186dc2a9da366021c89d878b9d .generated_files/flags/xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.map  -DXPRJ_xc8=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000 -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}/avr-objcopy -O ihex "${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/AVR64DU32_Client.X.${IMAGE_TYPE}.hex"
	
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
