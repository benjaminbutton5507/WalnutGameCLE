COMPILER = g++
LANGUAGE = c++
VERSION = 23
FLAGS = -std=$(LANGUAGE)$(VERSION) -Wall -Wextra -Wpedantic -Wshadow -Wconversion -Werror

BUILD = build
SRC = src
TEST = main

$(TEST): 
	$(COMPILER) $(FLAGS) $(SRC)/$(TEST).cc -o $(BUILD)/$(TEST).exe