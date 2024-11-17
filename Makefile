# 定義變量
CC = sdcc                   # 編譯器
FLASH_TOOL = stcgal         # 燒錄工具
PORT = /dev/tty.usbmodem58A80493051  # 燒錄的串口端口
PROTOCOL = stc89            # 單片機協議
SRC = main.c                # 源文件
OBJ = main.ihx              # 編譯生成的 IHX 文件
TARGET = main.hex           # 最終輸出的 HEX 文件
CLEAN_FILES = *.asm *.lst *.rst *.sym *.ihx *.cdb *.lk *.map *.mem *.rel

# 默認目標
all: $(TARGET)

# 編譯目標
$(TARGET): $(SRC)
	@echo "Compiling $(SRC)..."
	$(CC) -mmcs51 $(SRC)
	packihx $(OBJ) > $(TARGET)
	@echo "Build completed: $(TARGET)"

# 燒錄目標
flash: $(OBJ)
	@echo "Flashing $(OBJ) to device..."
	$(FLASH_TOOL) -P $(PROTOCOL) -p $(PORT) $(OBJ)
	@echo "Flashing completed."

# 自動編譯並燒錄
autoflash: $(SRC)
	@if [ ! -f $(OBJ) ] || [ $(SRC) -nt $(OBJ) ]; then \
		echo "Source file updated. Rebuilding..."; \
		make all; \
	else \
		echo "No changes detected. Skipping build."; \
	fi
	make flash

# 清理中間文件
clean:
	rm -f $(CLEAN_FILES)
	@echo "Cleaned up SDCC generated files."

# 顯示幫助
help:
	@echo "Makefile for SDCC"
	@echo "Usage:"
	@echo "  make          - Compile the project"
	@echo "  make flash    - Flash the program to the microcontroller"
	@echo "  make autoflash - Auto-compile and flash if changes are detected"
	@echo "  make clean    - Remove generated files"
	@echo "  make help     - Show this help message"

