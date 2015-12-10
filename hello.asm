global _compare_strings

_compare_strings:
  mov rdx, 0
  mov rcx, 1000
  check_loop:
    mov al, [rdi + rdx]
    mov bl, [rsi + rdx]
    inc rdx
    cmp al, bl
    jne DIF
    cmp al, 0
    je SAME
    jmp check_loop
  DIF:
    mov rax, 0
    jmp DONE
  SAME:
    mov rax, 1
  DONE:
  ret

  mov rax, 1
