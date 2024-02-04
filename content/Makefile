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

# Why use \001 and \002? https://stackoverflow.com/a/43462720
#   41   │ BLK="\001\033[01;30m\002"
#   42   │ RED="\001\033[01;31m\002"
#   43   │ GRN="\001\033[01;32m\002"
#   44   │ YLW="\001\033[01;33m\002"
#   45   │ BLU="\001\033[01;34m\002"
#   46   │ PUR="\001\033[01;35m\002"
#   47   │ CYN="\001\033[01;36m\002"
#   48   │ WHT="\001\033[01;37m\002"
#   49   │ RST="\001\033[00m\002"