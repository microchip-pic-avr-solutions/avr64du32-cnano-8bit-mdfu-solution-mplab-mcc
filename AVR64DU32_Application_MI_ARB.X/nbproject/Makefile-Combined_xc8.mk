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
ifeq "$(wildcard nbproject/Makefile-local-Combined_xc8.mk)" "nbproject/Makefile-local-Combined_xc8.mk"
include nbproject/Makefile-local-Combined_xc8.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Combined_xc8
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/nvm/src/nvm.c mcc_generated_files/reset/src/rstctrl.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/clock.c mcc_generated_files/timer/src/tca0.c mcc_generated_files/uart/src/usart1.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=mcc_generated_files/nvm/src/nvm.c mcc_generated_files/reset/src/rstctrl.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/clock.c mcc_generated_files/timer/src/tca0.c mcc_generated_files/uart/src/usart1.c main.c



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
	${MAKE}  -f nbproject/Makefile-Combined_xc8.mk ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=AVR64DU32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/Combined_xc8/954feaf45e9d11dca21ff8851bcb5dc1cc5635c5 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c 
	
${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o: mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/Combined_xc8/ee36a60895c6cc5c4ef06ddffded086360c9970d .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/reset/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o -o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o mcc_generated_files/reset/src/rstctrl.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/Combined_xc8/3e1bc7241ca3049308585dc16b1138a3c18b39a5 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/Combined_xc8/5c27840360d63cce7310f47d07bbc5eba1e26131 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/Combined_xc8/f087eb84925d524de406ef5308680c4a7929b0c4 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/Combined_xc8/1eb34e773c3381f15794e9d789ce921cbaa1d151 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/Combined_xc8/a8305f7326f08dffc7e5a26de06fb62d075478b8 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o: mcc_generated_files/timer/src/tca0.c  .generated_files/flags/Combined_xc8/5778898b338d3398443a50caf48f2e7eb5531cf .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o mcc_generated_files/timer/src/tca0.c 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/Combined_xc8/22428a302dd48d7125f50f6ea3b1448be195cad2 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Combined_xc8/64d57df5aeef1cef6d585f643f75fc0626729abf .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
else
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/Combined_xc8/e3b77272134f8de439ede622ba9d15bd4caac6c2 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c 
	
${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o: mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/Combined_xc8/a3b5392ce2a3a13f32200c578bbb9f604f3bb600 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/reset/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o -o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o mcc_generated_files/reset/src/rstctrl.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/Combined_xc8/c69be008210a2b07b6c11d583b37b9c6b1eafe09 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/Combined_xc8/6c26e20457de098c0b6b931dc92df461e18d662b .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/Combined_xc8/bb24bcb587d0fb12de9d3402c2f27bb46772b539 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/Combined_xc8/47869fb2cd121978e2753d6490cb916b55d8fde5 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/Combined_xc8/5248fab834b4d97c521f32f0d58e1d4a26515a11 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o: mcc_generated_files/timer/src/tca0.c  .generated_files/flags/Combined_xc8/e132785b765e500d27d46b8a57a4fa1909b1f70a .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o mcc_generated_files/timer/src/tca0.c 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/Combined_xc8/719b31f561171dba86152f7ee7b7166228830f71 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Combined_xc8/f384ec08e6ee2ece870f5595f145e3dcba43fbb5 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/Combined_xc8/db210bc549e9bd97ce9c6b2d48a312afac89db56 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/Combined_xc8/f803070583ac57b6d91e866e4e6b457e918eb5b1 .generated_files/flags/Combined_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
	@${RM} ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../AVR64DU32_Client_MI_ARB.X/dist/xc8/production/AVR64DU32_Client_MI_ARB.X.production.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.map  -DXPRJ_Combined_xc8=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress,-u,__TEXT_REGION_LENGTH__=0x4000:0x9FFF,-Ttext=0x4000  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}/avr-objcopy -O ihex "${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.hex"
	
	@echo "Creating unified hex file"
	@"/opt/microchip/mplabx/v6.25/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="/opt/microchip/mplabx/v6.25/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.hex ../AVR64DU32_Client_MI_ARB.X/dist/xc8/production/AVR64DU32_Client_MI_ARB.X.production.hex -odist/${CND_CONF}/production/AVR64DU32_Application_MI_ARB.X.production.unified.hex

endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd ../AVR64DU32_Client_MI_ARB.X && ${MAKE}  -f Makefile CONF=xc8 TYPE_IMAGE=DEBUG_RUN
else
	cd ../AVR64DU32_Client_MI_ARB.X && ${MAKE}  -f Makefile CONF=xc8
endif


# Subprojects
.clean-subprojects:
	cd ../AVR64DU32_Client_MI_ARB.X && rm -rf "build/xc8" "dist/xc8"

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
