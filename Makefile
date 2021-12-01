PKG_CONFIG = `pkg-config --libs --cflags gtk+-3.0 gtksourceview-4`
MAIN = src/syntax.c
CC = gcc
MAIN_FLAGS = -o
BUILD_DIR = build

all:
	mkdir $(BUILD_DIR)
	$(CC) $(MAIN) $(MAIN_FLAGS) $(BUILD_DIR)/syntax $(PKG_CONFIG) 
clean:
	rm -rf $(BUILD_DIR)