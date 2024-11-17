#include <8051.h>

// 使用 P2.0 作為 LED 腳位
#define LED P2_0

// 初始化 UART
void uart_init() {
    TMOD = 0x20;   // 設置 Timer1 為模式2 (自動重載)
    TH1 = 0xFD;    // 波特率 9600bps
    TL1 = 0xFD;
    TR1 = 1;       // 啟動 Timer1
    SCON = 0x50;   // 設置串口為模式1（8位UART，波特率可變）
    TI = 1;        // 傳輸準備完成
}

// UART 傳輸字符串
void uart_send_string(char *str) {
    while (*str) {
        SBUF = *str++;
        while (!TI);
        TI = 0;
    }
}

// 延時函數
void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++) {
        for (j = 0; j < 120; j++) {
            ; // 空操作，實現延時
        }
    }
}

void main() {
    uart_init();  // 初始化 UART
    LED = 0;      // 初始化 LED 為關閉

    uart_send_string("System Initialized\r\n");

    while (1) {
        // 強制切換 LED 狀態
        if (LED == 0) {
            LED = 1; // 打開 LED
            uart_send_string("LED ON\r\n");
        } else {
            LED = 0; // 關閉 LED
            uart_send_string("LED OFF\r\n");
        }

        delay_ms(1000); // 延時 1000ms
    }
}

