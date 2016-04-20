################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
utils/ustdlib.obj: C:/StellarisWare/utils/ustdlib.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"c:/ti/ccsv6/tools/compiler/arm_5.1.5/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="c:/ti/ccsv6/tools/compiler/arm_5.1.5/include" --include_path="C:/StellarisWare" -g --relaxed_ansi --gcc --define=ccs="ccs" --define=TARGET_IS_BLIZZARD_RA1 --define=PART_LM4F120H5QR --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="utils/ustdlib.pp" --obj_directory="utils" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


