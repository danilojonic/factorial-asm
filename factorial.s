.intel_syntax noprefix
.text

.global factorial	# Make 'factorial' visible to the linker (so C can call it)

factorial:
	enter 0, 0      # Stack frame setup:
                	#   	push rbp
            		#   	mov rbp, rsp
                	#   	sub rsp, 0 (no local variables)
                    # Equivalent to: push rbp; mov rbp, rsp

	cmp rdi, 1      # Compare n (RDI) with 1
	jbe base        # If n <= 1, jump to base case (return 1)

    # Recursive case: n > 1
	push rdi        # Save current n on the stack (preserve across call)
	dec rdi         # rdi = n - 1  (prepare argument for recursive call)
	call factorial  # Call factorial(n-1); result returned in RAX
	pop rdi         # Restore original n from stack
	
	imul rax, rdi   # Multiply RAX (result of (n-1)!) by RDI (n)
                    # Result = n * (n-1)!  stored in RAX
    jmp end         # Skip the base case code

# Base case: factorial(0) = 1, factorial(1) = 1
base:
	mov rax, 1      # return 1	
end:				
	leave           # Tear down stack frame:
                    #   	mov rsp, rbp
                    #   	pop rbp
    ret             # Return to caller (RAX holds the result)
