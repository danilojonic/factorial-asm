.intel_syntax noprefix
.text
.global factorial

factorial:
	enter 0, 0

	cmp rdi, 1
	jbe base
	
	push rdi
	dec rdi
	call factorial
	pop rdi
	imul rax, rdi
	jmp end

base:
	mov rax, 1
end:
	leave
	ret
