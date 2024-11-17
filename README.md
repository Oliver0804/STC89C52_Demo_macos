
# **項目使用指南**

## **簡介**
此專案使用 **SDCC (Small Device C Compiler)** 編譯 8051 單片機程式，並通過 **stcgal** 工具燒錄到 **STC89C52** 單片機。本專案提供以下功能：
- 編譯源代碼 (`main.c`) 生成可執行的 HEX 文件。
- 檢測代碼是否更新，自動編譯並燒錄。
- 支持清理編譯生成的中間文件，保持項目目錄整潔。

---

## **功能目錄**
- [環境要求](#環境要求)
- [文件結構](#文件結構)
- [Makefile 支持的命令](#makefile-支持的命令)
- [使用說明](#使用說明)

---

## **環境要求**
1. **操作系統**：Linux、macOS 或 Windows（需安裝 GNU Make）。
2. **編譯器**：已安裝 SDCC，並添加至系統 `PATH`。
3. **燒錄工具**：已安裝 `stcgal`，並確認硬件連接正常。
4. **硬件設備**：
   - STC89C52 單片機。
   - USB-TTL 串口模組。

---

## **文件結構**
- **main.c**：單片機應用代碼。
- **Makefile**：項目構建和燒錄的控制文件。
- **生成文件**（執行後產生）：
  - `main.ihx`：中間格式的 Intel HEX 文件。
  - `main.hex`：最終的燒錄文件。
  - `*.asm`、`*.lst` 等：中間文件，供調試使用。

---

## **Makefile 支持的命令**

### **1. 編譯程式**
運行以下命令：
```bash
make
```
功能：
- 將 `main.c` 編譯為 `main.ihx`。
- 將 `main.ihx` 轉換為 `main.hex`。
- 打印完成信息：
  ```
  Build completed: main.hex
  ```

---

### **2. 燒錄程式**
運行以下命令：
```bash
make flash
```
功能：
- 將 `main.ihx` 通過 `stcgal` 燒錄到單片機。
- 打印燒錄結果，例如：
  ```
  Finished. 8051 microcontroller is running.
  Flashing completed.
  ```

---

### **3. 自動檢查並燒錄**
運行以下命令：
```bash
make autoflash
```
功能：
- 自動檢查 `main.c` 是否更新。
- 如果有更新，先編譯，然後燒錄。
- 如果未檢測到更新，直接燒錄。

範例輸出：
- **檢測到更新**：
  ```
  Source file updated. Rebuilding...
  Compiling main.c...
  Build completed: main.hex
  Flashing main.ihx to device...
  Finished. 8051 microcontroller is running.
  Flashing completed.
  ```
- **未檢測到更新**：
  ```
  No changes detected. Skipping build.
  Flashing main.ihx to device...
  Finished. 8051 microcontroller is running.
  Flashing completed.
  ```

---

### **4. 清理文件**
運行以下命令：
```bash
make clean
```
功能：
- 刪除所有中間文件（如 `.asm`、`.lst`、`.ihx`、`.hex` 等）。
- 保留源文件 `main.c` 和 `Makefile`。
- 輸出：
  ```
  Cleaned up SDCC generated files.
  ```

---

### **5. 查看幫助**
運行以下命令：
```bash
make help
```
功能：
- 顯示 `Makefile` 支持的所有命令及其說明。
- 輸出：
  ```
  Makefile for SDCC
  Usage:
    make          - Compile the project
    make flash    - Flash the program to the microcontroller
    make autoflash - Auto-compile and flash if changes are detected
    make clean    - Remove generated files
    make help     - Show this help message
  ```

---

## **使用說明**
1. 確保已安裝 SDCC 和 stcgal 工具。
2. 確認燒錄工具的端口（默認 `/dev/tty.usbmodem58A80493051`）與單片機連接正常。
3. 修改 `Makefile` 中的 `PORT` 變量以適配你的系統端口：
   ```makefile
   PORT = /dev/tty.your_serial_port
   ```
4. 按需求運行 `make`、`make flash` 或 `make autoflash`。

---

## **注意事項**
- **HEX 文件備份**：清理文件時，會刪除生成的 `.hex` 文件。如果需要保留，請手動備份。
- **端口配置**：在 Windows 上，端口名稱通常為 `COM3` 或類似名稱，修改 `PORT` 為：
  ```makefile
  PORT = COM3
  ```
- **stcgal 燒錄協議**：如果使用的單片機不是 `stc89`，請修改 `PROTOCOL` 變量為相應的協議。

---

## **參考資料**
1. [SDCC 官方網站](http://sdcc.sourceforge.net/)
2. [stcgal 官方 GitHub](https://github.com/grigorig/stcgal)

---

這個 README 文件適用於開發者快速理解如何使用 `Makefile` 編譯和燒錄 STC89 系列單片機程式！
