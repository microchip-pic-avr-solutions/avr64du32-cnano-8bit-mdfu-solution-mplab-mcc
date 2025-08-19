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
FINAL_IMAGE=${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/bootloader/example/bl_example.c mcc_generated_files/bootloader/library/com_adapter/com_adapter.c mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c mcc_generated_files/bootloader/library/core/bl_memory.c mcc_generated_files/bootloader/library/core/bl_app_verify.c mcc_generated_files/bootloader/library/core/bl_interrupt.c mcc_generated_files/bootloader/library/core/bl_core.c mcc_generated_files/bootloader/library/core/bl_image_manager.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/reset/src/rstctrl.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/timer/src/delay.c mcc_generated_files/uart/src/usart1.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=mcc_generated_files/bootloader/example/bl_example.c mcc_generated_files/bootloader/library/com_adapter/com_adapter.c mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c mcc_generated_files/bootloader/library/core/bl_memory.c mcc_generated_files/bootloader/library/core/bl_app_verify.c mcc_generated_files/bootloader/library/core/bl_interrupt.c mcc_generated_files/bootloader/library/core/bl_core.c mcc_generated_files/bootloader/library/core/bl_image_manager.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/reset/src/rstctrl.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/timer/src/delay.c mcc_generated_files/uart/src/usart1.c main.c

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
	${MAKE}  -f nbproject/Makefile-gcc.mk ${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=AVR64DU32
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/gcc/1b5b8e28db2a7bf6b1680078c8402b72377042a2 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -DDEBUG  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o mcc_generated_files/system/src/protected_io.S  -DXPRJ_gcc=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1
	
else
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/gcc/5f483f118ffbb4bf8480ab094c3f887bde544a82 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.ok ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.err 
	 ${MP_CC} $(MP_EXTRA_AS_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x assembler-with-cpp -c -D__$(MP_PROCESSOR_OPTION)__  -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o mcc_generated_files/system/src/protected_io.S  -DXPRJ_gcc=$(CND_CONF)  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.asm.d"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o: mcc_generated_files/bootloader/example/bl_example.c  .generated_files/flags/gcc/b897550a4d9c0983874acc82358435cf446e2b0b .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/example" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o mcc_generated_files/bootloader/example/bl_example.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o: mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  .generated_files/flags/gcc/6e922a674c4ee0ea5c9012e3ca7b708ee0426e50 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o: mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  .generated_files/flags/gcc/22366c3048c3f65dde5d5ad00446858534ef4960 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o: mcc_generated_files/bootloader/library/core/bl_memory.c  .generated_files/flags/gcc/f1baa28f6bcc22fd25f8941f5249510d6fb73b40 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o mcc_generated_files/bootloader/library/core/bl_memory.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o: mcc_generated_files/bootloader/library/core/bl_app_verify.c  .generated_files/flags/gcc/b382c60c030a2f374051b179cf989fa9b62550e6 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o mcc_generated_files/bootloader/library/core/bl_app_verify.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o: mcc_generated_files/bootloader/library/core/bl_interrupt.c  .generated_files/flags/gcc/7bb0d55f8101ee5bc8862385dc5cba2d8544c107 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o mcc_generated_files/bootloader/library/core/bl_interrupt.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o: mcc_generated_files/bootloader/library/core/bl_core.c  .generated_files/flags/gcc/9f3673d5f13555ca77e5eb30e3f8be67e6116854 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o mcc_generated_files/bootloader/library/core/bl_core.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o: mcc_generated_files/bootloader/library/core/bl_image_manager.c  .generated_files/flags/gcc/e59a278fb425c8686d31b8757ca935a67ab98105 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o mcc_generated_files/bootloader/library/core/bl_image_manager.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/gcc/bf60d39e6d0488f71ca2ec7bc70c17f62497e9a0 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o  -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o: mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/gcc/9c2809700b64baf7e1878dc457bfee49e6c68a2 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/reset/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o  -o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o mcc_generated_files/reset/src/rstctrl.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/gcc/c349320f1bde3b88bc3fc1e4b0f592f472190ce .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/gcc/726539799d4a536d07fb016180e3a9a619425eeb .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/gcc/f26d413b526fe75f76a92536bf55b6af561af53d .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/gcc/244647a5a29505a558ce00186891b7d1020d5fce .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/gcc/af4980f4211c98400d6c747da793ba274ead7f76 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.o: mcc_generated_files/timer/src/delay.c  .generated_files/flags/gcc/430f170bdb1652725035475c8055c8fe172f0f79 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o  -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o mcc_generated_files/timer/src/delay.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/gcc/21fcb096af0f1ac130d50a3b2fb8cac8d6b95223 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o  -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/gcc/c459d8cb866dfa8c3a3dae2ce76bac34d0dc0ea0 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o  -o ${OBJECTDIR}/main.o main.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o: mcc_generated_files/bootloader/example/bl_example.c  .generated_files/flags/gcc/b4c5df5364c5509aa6b2ca0356f5d6a3b1190d2c .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/example" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/example/bl_example.o mcc_generated_files/bootloader/example/bl_example.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o: mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  .generated_files/flags/gcc/b620c35b577faca472e45a92cd5cf198b6653ab5 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/com_adapter/com_adapter.o mcc_generated_files/bootloader/library/com_adapter/com_adapter.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o: mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  .generated_files/flags/gcc/ef8a1714c140d29b927f6cd069f4fb5bef7e9cab .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/ftp/bl_ftp.o mcc_generated_files/bootloader/library/core/ftp/bl_ftp.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o: mcc_generated_files/bootloader/library/core/bl_memory.c  .generated_files/flags/gcc/ad82173850dfcb89d791700d4a75da2a9275b2b2 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_memory.o mcc_generated_files/bootloader/library/core/bl_memory.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o: mcc_generated_files/bootloader/library/core/bl_app_verify.c  .generated_files/flags/gcc/67ee55ce99d8ecde3a5dab80ea43cc186789b5fe .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_app_verify.o mcc_generated_files/bootloader/library/core/bl_app_verify.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o: mcc_generated_files/bootloader/library/core/bl_interrupt.c  .generated_files/flags/gcc/60333ab7373c68a0f293099ba981b834593f27d5 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_interrupt.o mcc_generated_files/bootloader/library/core/bl_interrupt.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o: mcc_generated_files/bootloader/library/core/bl_core.c  .generated_files/flags/gcc/97472311f1c1e429bc9ab77b8c0e806f68e8f09f .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_core.o mcc_generated_files/bootloader/library/core/bl_core.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o: mcc_generated_files/bootloader/library/core/bl_image_manager.c  .generated_files/flags/gcc/63c3cd0f240faf0b68800566826d1c9f021a5af4 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/bootloader/library/core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o  -o ${OBJECTDIR}/mcc_generated_files/bootloader/library/core/bl_image_manager.o mcc_generated_files/bootloader/library/core/bl_image_manager.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o: mcc_generated_files/nvm/src/nvm.c  .generated_files/flags/gcc/ac3523cb201b8d1e6af54c1097fc1752c8292c68 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT "${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o.d" -MT ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o  -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.o mcc_generated_files/nvm/src/nvm.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o: mcc_generated_files/reset/src/rstctrl.c  .generated_files/flags/gcc/79411713337a9b17f3c8f82229eb4540b8634ea9 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/reset/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o  -o ${OBJECTDIR}/mcc_generated_files/reset/src/rstctrl.o mcc_generated_files/reset/src/rstctrl.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/gcc/2cac5612d8841792bcc876013ff9833091c3b29b .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/gcc/a18eacd44d01c1b7b7c245403e6ed2d833347e25 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/gcc/a44050e6f6f7c1e88e52a8ac0191f23e9d4a4d3d .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/gcc/bc67808395d3a5874ddd063e365d37f5b558bfb6 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/gcc/ca643794d21211adc9ac4eb41c227d74e306e8a8 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o  -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.o: mcc_generated_files/timer/src/delay.c  .generated_files/flags/gcc/a0c72b9c02bc91c5928701cfd4dd9fd6a7aaba3a .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o  -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.o mcc_generated_files/timer/src/delay.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o: mcc_generated_files/uart/src/usart1.c  .generated_files/flags/gcc/773bbdeab21404b3917b586930a4712b2dbe13b .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=avr64du32 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -funsigned-char -funsigned-bitfields -O2 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT "${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o.d" -MT ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o  -o ${OBJECTDIR}/mcc_generated_files/uart/src/usart1.o mcc_generated_files/uart/src/usart1.c  -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/gcc/bd0334ac16dfef09da4b49bd43841a2e8d7d74f1 .generated_files/flags/gcc/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=avr64du32 ${PACK_COMMON_OPTIONS}   -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000
	
	
	
	
	
	
else
${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=avr64du32 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/AVR64DU32_Client_MI_ARB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_gcc=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym,__TEXT_REGION_LENGTH__=0x4000
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
