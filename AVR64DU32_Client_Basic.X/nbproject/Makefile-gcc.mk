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
ifeq "$(wildcard nbproject/Makefile-local-gcc.mk)" "nbproject/Makefile-local-gcc.mk"
include nbproject/Makefile-local-gcc.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=gcc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/AVR64DU32_Client_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/AVR64DU32_Client_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/bootloader/example/bl_example.c mcc_generated_files/bootloader/library/com_adapter/com_adapter.c mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c mcc_generated_files/bootloader/library/core/bl_memory.c mcc_generated_files/bootloader/library/core/bl_app_verify.c mcc_generated_files/bootloader/library/core/bl_interrupt.c mcc_generated_files/bootloader/library/core/bl_core.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/reset/src/rstctrl.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/timer/src/delay.c mcc_generated_files/uart/src/usart1.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=mcc_generated_files/bootloader/example/bl_example.c mcc_generated_files/bootloader/library/com_adapter/com_adapter.c mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c mcc_generated_files/bootloader/library/core/bl_memory.c mcc_generated_files/bootloader/library/core/bl_app_verify.c mcc_generated_files/bootloader/library/core/bl_interrupt.c mcc_generated_files/bootloader/library/core/bl_core.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/reset/src/rstctrl.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/timer/src/delay.c mcc_generated_files/uart/src/usart1.c main.c

# Pack Options 
PACK_COMPILER_OPTIONS=-I "${DFP_DIR}/include"
PACK_COMMON_OPTIONS=-B "${DFP_DIR}/gcc/dev/avr64du32"



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
	${MAKE}  -f nbproject/Makefile-gcc.mk ${DISTDIR}/AVR64DU32_Client_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=AVR64DU32
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/gcc/a6983c0fc21f39b50bf55060689062d9b88a08dc .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -DDEBUG  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o mcc_generated_files/system/src/protected_io.S  -DXPRJ_gcc=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1
	
else
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/gcc/b5c3912d41c86d6475a0ab9f1935fc74dc824516 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o mcc_generated_files/system/src/protected_io.S  -DXPRJ_gcc=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.asm.d"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o: mcc_generated_files/bootloader/example/bl_example.c  .generated_files/flags/gcc/df2e9d5c65ca0d257132479d2717970b543c175 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/example" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o mcc_generated_files/bootloader/example/bl_example.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o: mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  .generated_files/flags/gcc/7a0714b820c08f5113506a9930a2200ca1f3960f .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o: mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  .generated_files/flags/gcc/fbac4d09f6918ef70b14e9a4f0d060bbd8301e24 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o: mcc_generated_files/bootloader/library/core/bl_memory.c  .generated_files/flags/gcc/7fc589fe7d9946324fccfb536b2d399b6e8d94fa .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o mcc_generated_files/bootloader/library/core/bl_memory.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o: mcc_generated_files/bootloader/library/core/bl_app_verify.c  .generated_files/flags/gcc/881ce6616a877918ed65f996e6909e4c045a35b9 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o mcc_generated_files/bootloader/library/core/bl_app_verify.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o: mcc_generated_files/bootloader/library/core/bl_interrupt.c  .generated_files/flags/gcc/590623080ff691f910e071d90d05cf97cde839ef .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o mcc_generated_files/bootloader/library/core/bl_interrupt.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o: mcc_generated_files/bootloader/library/core/bl_core.c  .generated_files/flags/gcc/e0c37e7a145d6573e578d1069688a8d2114c027d .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o mcc_generated_files/bootloader/library/core/bl_core.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/gcc/8f49d4a3dc3056c6e84998dcd2b731e04faf7c5e .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o  -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o: mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/gcc/252129e4513dd5a5a8c07e08f3847fc91471d948 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/reset/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o  -o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o mcc_generated_files/reset/src/rstctrl.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/gcc/50464f561d5953fd9a3cb3ea9da6d21d977c7b0c .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/gcc/53f3a9f9ce1b6e2a27e73bb032b1ec351410f67b .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/gcc/2b6d43d4175741cc74eb6bdb905f5c6dfa6410f0 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/gcc/dc1dfb90ab91a9d49af5743689db01f83de6bc15 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/gcc/78679077c1fe1359ac3f880b9d1ba7fa5bb31c2 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.o: mcc_generated_files/timer/src/delay.c  .generated_files/flags/gcc/a8548e30fbb3531a5de4c180c6a000fe590e710b .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o  -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o mcc_generated_files/timer/src/delay.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/gcc/61782c6147caf76ecdc36c935336bd417cd0bc92 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o  -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/gcc/1b32e4ec576ef916d81fcd715a7e1b559b8ab53f .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o: mcc_generated_files/bootloader/example/bl_example.c  .generated_files/flags/gcc/916117f2fd8826e7943bf30eff33a2c4d5831baf .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/example" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o mcc_generated_files/bootloader/example/bl_example.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o: mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  .generated_files/flags/gcc/24189abd2cebe332a92887bb11bf1e298cf9fafd .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o: mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  .generated_files/flags/gcc/9e438e0b1b2d4ff852e61a831a5253f171562f6a .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o: mcc_generated_files/bootloader/library/core/bl_memory.c  .generated_files/flags/gcc/ffac04f2899b98c998388aff94961742eb31412c .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o mcc_generated_files/bootloader/library/core/bl_memory.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o: mcc_generated_files/bootloader/library/core/bl_app_verify.c  .generated_files/flags/gcc/d235e9a7ee3395496ad9c2f91baf4b4b1245f60e .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o mcc_generated_files/bootloader/library/core/bl_app_verify.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o: mcc_generated_files/bootloader/library/core/bl_interrupt.c  .generated_files/flags/gcc/eea23cad41844a046bfd900eb4cae4d1ad767445 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o mcc_generated_files/bootloader/library/core/bl_interrupt.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o: mcc_generated_files/bootloader/library/core/bl_core.c  .generated_files/flags/gcc/46b616a46942e7d5a8340e4a060137894175e93c .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o mcc_generated_files/bootloader/library/core/bl_core.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/gcc/20ed174d999486ea75f479078a7e5f719abd05ec .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o  -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o: mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/gcc/2ebc8d73d8cd6dbb801e45f0ce4317619d6e4618 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/reset/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o  -o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o mcc_generated_files/reset/src/rstctrl.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/gcc/6a5e67e9e759310a4b1e8d441df8ef6d95ce2145 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/gcc/9487bf710980613003ab251830b694a4581a4e5c .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/gcc/ee740b632e180b35a0106a20096a6f281e9ea621 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/gcc/63d65255c13923c055e155bbd7d5a9e97180e05 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/gcc/cb3fc981dbba80512e4345a1e7f8fa5884d35ab4 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.o: mcc_generated_files/timer/src/delay.c  .generated_files/flags/gcc/6f1c584cd7a99098df31c08070f251b339957715 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o  -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o mcc_generated_files/timer/src/delay.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/gcc/160c3171b921994c1e139fb36aa1e14069a2777a .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o  -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/gcc/927aa7a55d0e41d8d12af32a4ceac3a79bfb0f1 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/AVR64DU32_Client_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=avr64du32 ${PACK_COMMON_OPTIONS}   -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}/AVR64DU32_Client_Basic.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/AVR64DU32_Client_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000
	
	
	
	
	
	
else
${DISTDIR}/AVR64DU32_Client_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=avr64du32 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}/AVR64DU32_Client_Basic.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/AVR64DU32_Client_Basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000
	${MP_CC_DIR}/avr-objcopy -O ihex "${DISTDIR}/AVR64DU32_Client_Basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/AVR64DU32_Client_Basic.X.${IMAGE_TYPE}.hex"
	
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
