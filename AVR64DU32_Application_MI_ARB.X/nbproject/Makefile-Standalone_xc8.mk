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
ifeq "$(wildcard nbproject/Makefile-local-Standalone_xc8.mk)" "nbproject/Makefile-local-Standalone_xc8.mk"
include nbproject/Makefile-local-Standalone_xc8.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Standalone_xc8
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
	${MAKE}  -f nbproject/Makefile-Standalone_xc8.mk ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=AVR64DU32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/Standalone_xc8/803da3dfcd0c4b8987362a44e5685def90a31e50 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c 
	
${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o: mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/Standalone_xc8/fa5ad3096162782863aec9b26c13c874ac6979a4 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/reset/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o -o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o mcc_generated_files/reset/src/rstctrl.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/Standalone_xc8/1192f888dddd57cbfa6083036afec142c4e91a86 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/Standalone_xc8/81fe9f9eb456e9e3f93676bbbf4cd4aa512897e6 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/Standalone_xc8/c73fcb04a50c12db31e28337d5e7b7846f42bed4 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/Standalone_xc8/91cbd093bf6d7d5ef9c0e15ce6f8eb257cc64314 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/Standalone_xc8/a561807982d7ec0556b191a520761945eaa82b31 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o: mcc_generated_files/timer/src/tca0.c  .generated_files/flags/Standalone_xc8/c0a56af1b115cc61eb4b39c0f59ae59d64432cd5 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o mcc_generated_files/timer/src/tca0.c 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/Standalone_xc8/9dfae322bb5345bb6217e941d8010ebb5e4a021 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Standalone_xc8/a5993946753f182e1c81fdfa25799fcdb268f9af .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
else
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/Standalone_xc8/96463cc7432d165e5f92eb0e76f10e5fc0336ddc .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c 
	
${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o: mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/Standalone_xc8/b945b7d47abd66261c8bfb0cf6649d218a066917 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/reset/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o -o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o mcc_generated_files/reset/src/rstctrl.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/Standalone_xc8/735f2dfe4dbcff13305c38e0df93ccb13604f7d5 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/Standalone_xc8/9aec9f1382741ab64376ac35ac60f7bb09dc0662 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/Standalone_xc8/475d49433726c34e983c906023ec100b210a9878 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/Standalone_xc8/6f6cfbeec25a152f6f9cbc616e2494f1723ad962 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/Standalone_xc8/bf22ac4f2e704c2e28af39399731b9b4a024f260 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o: mcc_generated_files/timer/src/tca0.c  .generated_files/flags/Standalone_xc8/f4a95cd26ee319acc8d1ce72cb1fbb75236179d4 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/tca0.o mcc_generated_files/timer/src/tca0.c 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/Standalone_xc8/8c10e0960e1d62efcec3762c6233ce74d44999e7 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Standalone_xc8/b08dab455118fe93ad5f9818548a1aa27719e6b9 .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/Standalone_xc8/d5146874e6e7c6c85363a557044924fa00c30d8c .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/Standalone_xc8/f43b603aadee71153a8351e3c01d1504906a6a8e .generated_files/flags/Standalone_xc8/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall -DXPRJ_Standalone_xc8=$(CND_CONF)    -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_Standalone_xc8=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall   -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.map  -DXPRJ_Standalone_xc8=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O2 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -mext=cci -Wall   -Ttext=0x4000 -Wl,-u,applicationFooter,-u,applicationVersion,-u,applicationId,-u,verificationStartAddress,-u,verificationEndAddress -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}/avr-objcopy -O ihex "${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/AVR64DU32_Application_MI_ARB.X.${IMAGE_TYPE}.hex"
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
