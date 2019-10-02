	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"test.ll"
	.def	 test1;
	.scl	2;
	.type	32;
	.endef
	.globl	test1                   # -- Begin function test1
	.p2align	4, 0x90
test1:                                  # @test1
# %bb.0:
	movl	%ecx, %eax
	retq
                                        # -- End function
	.def	 test;
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90         # -- Begin function test
test:                                   # @test
# %bb.0:
	movl	%ecx, %eax
	retq
                                        # -- End function
	.def	 caller;
	.scl	2;
	.type	32;
	.endef
	.globl	caller                  # -- Begin function caller
	.p2align	4, 0x90
caller:                                 # @caller
.seh_proc caller
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	$123, %ecx
	movl	$456, %edx              # imm = 0x1C8
	callq	test
	nop
	addq	$40, %rsp
	retq
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function

