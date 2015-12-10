global _add
global _increase

segment .text
_add:
  mov         rax, rdi
  add         rax, rsi
  ret

_increase:
  mov         rax, 0
  mov         rcx, rdi
  increase_loop:
    inc       rax
    loop      increase_loop
  ret
