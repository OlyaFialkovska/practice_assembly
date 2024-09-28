section .data
    hello db 'Hello, World!', 0    ; Сообщение для вывода

section .text
    global _start                  ; Точка входа в программу

_start:
    ; Системный вызов write
    mov eax, 4                     ; Номер системного вызова (4 — write)
    mov ebx, 1                     ; Дескриптор файла (1 — stdout)
    mov ecx, hello                 ; Адрес строки для вывода
    mov edx, 13                    ; Длина строки
    int 0x80                       ; Вызов прерывания для системного вызова

    ; Системный вызов exit
    mov eax, 1                     ; Номер системного вызова (1 — exit)
    xor ebx, ebx                   ; Код завершения программы 0
    int 0x80                       ; Вызов прерывания
