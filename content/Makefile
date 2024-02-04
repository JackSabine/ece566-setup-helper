default_target: all
.ONESHELL:

PROJECT := REPLACE_ME_WITH_PROJECT
BUILD := build

all: $(BUILD)/$(PROJECT)

$(BUILD)/$(PROJECT): | $(BUILD)
	@cd $(BUILD)
	@cmake --build .
	@echo "\033[01;32mCompilation successful!\033[00m"

$(BUILD):
	@mkdir $(BUILD)
	@cd $(BUILD)
	@cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
	@echo "\033[01;32mMade build directory\033[00m"

clean:
	@rm -rf $(BUILD)/$(PROJECT)
	@echo "\033[01;31mRemoved binary\033[00m"

reallyclean:
	@rm -rf $(BUILD)
	@echo "\033[01;31mRemoved build directory\033[00m"

# Bold ANSI color strings
# BLK="\033[01;30m"
# RED="\033[01;31m"
# GRN="\033[01;32m"
# YLW="\033[01;33m"
# BLU="\033[01;34m"
# PUR="\033[01;35m"
# CYN="\033[01;36m"
# WHT="\033[01;37m"
# RST="\033[00m"