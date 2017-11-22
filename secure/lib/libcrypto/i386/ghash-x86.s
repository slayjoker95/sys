	# $FreeBSD: releng/10.3/secure/lib/libcrypto/i386/ghash-x86.s 238405 2012-07-12 19:30:53Z jkim $
.file	"ghash-x86.s"
.text
.globl	gcm_gmult_4bit_x86
.type	gcm_gmult_4bit_x86,@function
.align	16
gcm_gmult_4bit_x86:
.L_gcm_gmult_4bit_x86_begin:
	pushl	%ebp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	subl	$84,%esp
	movl	104(%esp),%edi
	movl	108(%esp),%esi
	movl	(%edi),%ebp
	movl	4(%edi),%edx
	movl	8(%edi),%ecx
	movl	12(%edi),%ebx
	movl	$0,16(%esp)
	movl	$471859200,20(%esp)
	movl	$943718400,24(%esp)
	movl	$610271232,28(%esp)
	movl	$1887436800,32(%esp)
	movl	$1822425088,36(%esp)
	movl	$1220542464,40(%esp)
	movl	$1423966208,44(%esp)
	movl	$3774873600,48(%esp)
	movl	$4246732800,52(%esp)
	movl	$3644850176,56(%esp)
	movl	$3311403008,60(%esp)
	movl	$2441084928,64(%esp)
	movl	$2376073216,68(%esp)
	movl	$2847932416,72(%esp)
	movl	$3051356160,76(%esp)
	movl	%ebp,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	%ebx,12(%esp)
	shrl	$20,%ebx
	andl	$240,%ebx
	movl	4(%esi,%ebx,1),%ebp
	movl	(%esi,%ebx,1),%edx
	movl	12(%esi,%ebx,1),%ecx
	movl	8(%esi,%ebx,1),%ebx
	xorl	%eax,%eax
	movl	$15,%edi
	jmp	.L000x86_loop
.align	16
.L000x86_loop:
	movb	%bl,%al
	shrdl	$4,%ecx,%ebx
	andb	$15,%al
	shrdl	$4,%edx,%ecx
	shrdl	$4,%ebp,%edx
	shrl	$4,%ebp
	xorl	16(%esp,%eax,4),%ebp
	movb	(%esp,%edi,1),%al
	andb	$240,%al
	xorl	8(%esi,%eax,1),%ebx
	xorl	12(%esi,%eax,1),%ecx
	xorl	(%esi,%eax,1),%edx
	xorl	4(%esi,%eax,1),%ebp
	decl	%edi
	js	.L001x86_break
	movb	%bl,%al
	shrdl	$4,%ecx,%ebx
	andb	$15,%al
	shrdl	$4,%edx,%ecx
	shrdl	$4,%ebp,%edx
	shrl	$4,%ebp
	xorl	16(%esp,%eax,4),%ebp
	movb	(%esp,%edi,1),%al
	shlb	$4,%al
	xorl	8(%esi,%eax,1),%ebx
	xorl	12(%esi,%eax,1),%ecx
	xorl	(%esi,%eax,1),%edx
	xorl	4(%esi,%eax,1),%ebp
	jmp	.L000x86_loop
.align	16
.L001x86_break:
	bswap	%ebx
	bswap	%ecx
	bswap	%edx
	bswap	%ebp
	movl	104(%esp),%edi
	movl	%ebx,12(%edi)
	movl	%ecx,8(%edi)
	movl	%edx,4(%edi)
	movl	%ebp,(%edi)
	addl	$84,%esp
	popl	%edi
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
.size	gcm_gmult_4bit_x86,.-.L_gcm_gmult_4bit_x86_begin
.globl	gcm_ghash_4bit_x86
.type	gcm_ghash_4bit_x86,@function
.align	16
gcm_ghash_4bit_x86:
.L_gcm_ghash_4bit_x86_begin:
	pushl	%ebp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	subl	$84,%esp
	movl	104(%esp),%ebx
	movl	108(%esp),%esi
	movl	112(%esp),%edi
	movl	116(%esp),%ecx
	addl	%edi,%ecx
	movl	%ecx,116(%esp)
	movl	(%ebx),%ebp
	movl	4(%ebx),%edx
	movl	8(%ebx),%ecx
	movl	12(%ebx),%ebx
	movl	$0,16(%esp)
	movl	$471859200,20(%esp)
	movl	$943718400,24(%esp)
	movl	$610271232,28(%esp)
	movl	$1887436800,32(%esp)
	movl	$1822425088,36(%esp)
	movl	$1220542464,40(%esp)
	movl	$1423966208,44(%esp)
	movl	$3774873600,48(%esp)
	movl	$4246732800,52(%esp)
	movl	$3644850176,56(%esp)
	movl	$3311403008,60(%esp)
	movl	$2441084928,64(%esp)
	movl	$2376073216,68(%esp)
	movl	$2847932416,72(%esp)
	movl	$3051356160,76(%esp)
.align	16
.L002x86_outer_loop:
	xorl	12(%edi),%ebx
	xorl	8(%edi),%ecx
	xorl	4(%edi),%edx
	xorl	(%edi),%ebp
	movl	%ebx,12(%esp)
	movl	%ecx,8(%esp)
	movl	%edx,4(%esp)
	movl	%ebp,(%esp)
	shrl	$20,%ebx
	andl	$240,%ebx
	movl	4(%esi,%ebx,1),%ebp
	movl	(%esi,%ebx,1),%edx
	movl	12(%esi,%ebx,1),%ecx
	movl	8(%esi,%ebx,1),%ebx
	xorl	%eax,%eax
	movl	$15,%edi
	jmp	.L003x86_loop
.align	16
.L003x86_loop:
	movb	%bl,%al
	shrdl	$4,%ecx,%ebx
	andb	$15,%al
	shrdl	$4,%edx,%ecx
	shrdl	$4,%ebp,%edx
	shrl	$4,%ebp
	xorl	16(%esp,%eax,4),%ebp
	movb	(%esp,%edi,1),%al
	andb	$240,%al
	xorl	8(%esi,%eax,1),%ebx
	xorl	12(%esi,%eax,1),%ecx
	xorl	(%esi,%eax,1),%edx
	xorl	4(%esi,%eax,1),%ebp
	decl	%edi
	js	.L004x86_break
	movb	%bl,%al
	shrdl	$4,%ecx,%ebx
	andb	$15,%al
	shrdl	$4,%edx,%ecx
	shrdl	$4,%ebp,%edx
	shrl	$4,%ebp
	xorl	16(%esp,%eax,4),%ebp
	movb	(%esp,%edi,1),%al
	shlb	$4,%al
	xorl	8(%esi,%eax,1),%ebx
	xorl	12(%esi,%eax,1),%ecx
	xorl	(%esi,%eax,1),%edx
	xorl	4(%esi,%eax,1),%ebp
	jmp	.L003x86_loop
.align	16
.L004x86_break:
	bswap	%ebx
	bswap	%ecx
	bswap	%edx
	bswap	%ebp
	movl	112(%esp),%edi
	leal	16(%edi),%edi
	cmpl	116(%esp),%edi
	movl	%edi,112(%esp)
	jb	.L002x86_outer_loop
	movl	104(%esp),%edi
	movl	%ebx,12(%edi)
	movl	%ecx,8(%edi)
	movl	%edx,4(%edi)
	movl	%ebp,(%edi)
	addl	$84,%esp
	popl	%edi
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
.size	gcm_ghash_4bit_x86,.-.L_gcm_ghash_4bit_x86_begin
.globl	gcm_gmult_4bit_mmx
.type	gcm_gmult_4bit_mmx,@function
.align	16
gcm_gmult_4bit_mmx:
.L_gcm_gmult_4bit_mmx_begin:
	pushl	%ebp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	movl	20(%esp),%edi
	movl	24(%esp),%esi
	call	.L005pic_point
.L005pic_point:
	popl	%eax
	leal	.Lrem_4bit-.L005pic_point(%eax),%eax
	movzbl	15(%edi),%ebx
	xorl	%ecx,%ecx
	movl	%ebx,%edx
	movb	%dl,%cl
	movl	$14,%ebp
	shlb	$4,%cl
	andl	$240,%edx
	movq	8(%esi,%ecx,1),%mm0
	movq	(%esi,%ecx,1),%mm1
	movd	%mm0,%ebx
	jmp	.L006mmx_loop
.align	16
.L006mmx_loop:
	psrlq	$4,%mm0
	andl	$15,%ebx
	movq	%mm1,%mm2
	psrlq	$4,%mm1
	pxor	8(%esi,%edx,1),%mm0
	movb	(%edi,%ebp,1),%cl
	psllq	$60,%mm2
	pxor	(%eax,%ebx,8),%mm1
	decl	%ebp
	movd	%mm0,%ebx
	pxor	(%esi,%edx,1),%mm1
	movl	%ecx,%edx
	pxor	%mm2,%mm0
	js	.L007mmx_break
	shlb	$4,%cl
	andl	$15,%ebx
	psrlq	$4,%mm0
	andl	$240,%edx
	movq	%mm1,%mm2
	psrlq	$4,%mm1
	pxor	8(%esi,%ecx,1),%mm0
	psllq	$60,%mm2
	pxor	(%eax,%ebx,8),%mm1
	movd	%mm0,%ebx
	pxor	(%esi,%ecx,1),%mm1
	pxor	%mm2,%mm0
	jmp	.L006mmx_loop
.align	16
.L007mmx_break:
	shlb	$4,%cl
	andl	$15,%ebx
	psrlq	$4,%mm0
	andl	$240,%edx
	movq	%mm1,%mm2
	psrlq	$4,%mm1
	pxor	8(%esi,%ecx,1),%mm0
	psllq	$60,%mm2
	pxor	(%eax,%ebx,8),%mm1
	movd	%mm0,%ebx
	pxor	(%esi,%ecx,1),%mm1
	pxor	%mm2,%mm0
	psrlq	$4,%mm0
	andl	$15,%ebx
	movq	%mm1,%mm2
	psrlq	$4,%mm1
	pxor	8(%esi,%edx,1),%mm0
	psllq	$60,%mm2
	pxor	(%eax,%ebx,8),%mm1
	movd	%mm0,%ebx
	pxor	(%esi,%edx,1),%mm1
	pxor	%mm2,%mm0
	psrlq	$32,%mm0
	movd	%mm1,%edx
	psrlq	$32,%mm1
	movd	%mm0,%ecx
	movd	%mm1,%ebp
	bswap	%ebx
	bswap	%edx
	bswap	%ecx
	bswap	%ebp
	emms
	movl	%ebx,12(%edi)
	movl	%edx,4(%edi)
	movl	%ecx,8(%edi)
	movl	%ebp,(%edi)
	popl	%edi
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
.size	gcm_gmult_4bit_mmx,.-.L_gcm_gmult_4bit_mmx_begin
.globl	gcm_ghash_4bit_mmx
.type	gcm_ghash_4bit_mmx,@function
.align	16
gcm_ghash_4bit_mmx:
.L_gcm_ghash_4bit_mmx_begin:
	pushl	%ebp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	movl	20(%esp),%eax
	movl	24(%esp),%ebx
	movl	28(%esp),%ecx
	movl	32(%esp),%edx
	movl	%esp,%ebp
	call	.L008pic_point
.L008pic_point:
	popl	%esi
	leal	.Lrem_8bit-.L008pic_point(%esi),%esi
	subl	$544,%esp
	andl	$-64,%esp
	subl	$16,%esp
	addl	%ecx,%edx
	movl	%eax,544(%esp)
	movl	%edx,552(%esp)
	movl	%ebp,556(%esp)
	addl	$128,%ebx
	leal	144(%esp),%edi
	leal	400(%esp),%ebp
	movl	-120(%ebx),%edx
	movq	-120(%ebx),%mm0
	movq	-128(%ebx),%mm3
	shll	$4,%edx
	movb	%dl,(%esp)
	movl	-104(%ebx),%edx
	movq	-104(%ebx),%mm2
	movq	-112(%ebx),%mm5
	movq	%mm0,-128(%edi)
	psrlq	$4,%mm0
	movq	%mm3,(%edi)
	movq	%mm3,%mm7
	psrlq	$4,%mm3
	shll	$4,%edx
	movb	%dl,1(%esp)
	movl	-88(%ebx),%edx
	movq	-88(%ebx),%mm1
	psllq	$60,%mm7
	movq	-96(%ebx),%mm4
	por	%mm7,%mm0
	movq	%mm2,-120(%edi)
	psrlq	$4,%mm2
	movq	%mm5,8(%edi)
	movq	%mm5,%mm6
	movq	%mm0,-128(%ebp)
	psrlq	$4,%mm5
	movq	%mm3,(%ebp)
	shll	$4,%edx
	movb	%dl,2(%esp)
	movl	-72(%ebx),%edx
	movq	-72(%ebx),%mm0
	psllq	$60,%mm6
	movq	-80(%ebx),%mm3
	por	%mm6,%mm2
	movq	%mm1,-112(%edi)
	psrlq	$4,%mm1
	movq	%mm4,16(%edi)
	movq	%mm4,%mm7
	movq	%mm2,-120(%ebp)
	psrlq	$4,%mm4
	movq	%mm5,8(%ebp)
	shll	$4,%edx
	movb	%dl,3(%esp)
	movl	-56(%ebx),%edx
	movq	-56(%ebx),%mm2
	psllq	$60,%mm7
	movq	-64(%ebx),%mm5
	por	%mm7,%mm1
	movq	%mm0,-104(%edi)
	psrlq	$4,%mm0
	movq	%mm3,24(%edi)
	movq	%mm3,%mm6
	movq	%mm1,-112(%ebp)
	psrlq	$4,%mm3
	movq	%mm4,16(%ebp)
	shll	$4,%edx
	movb	%dl,4(%esp)
	movl	-40(%ebx),%edx
	movq	-40(%ebx),%mm1
	psllq	$60,%mm6
	movq	-48(%ebx),%mm4
	por	%mm6,%mm0
	movq	%mm2,-96(%edi)
	psrlq	$4,%mm2
	movq	%mm5,32(%edi)
	movq	%mm5,%mm7
	movq	%mm0,-104(%ebp)
	psrlq	$4,%mm5
	movq	%mm3,24(%ebp)
	shll	$4,%edx
	movb	%dl,5(%esp)
	movl	-24(%ebx),%edx
	movq	-24(%ebx),%mm0
	psllq	$60,%mm7
	movq	-32(%ebx),%mm3
	por	%mm7,%mm2
	movq	%mm1,-88(%edi)
	psrlq	$4,%mm1
	movq	%mm4,40(%edi)
	movq	%mm4,%mm6
	movq	%mm2,-96(%ebp)
	psrlq	$4,%mm4
	movq	%mm5,32(%ebp)
	shll	$4,%edx
	movb	%dl,6(%esp)
	movl	-8(%ebx),%edx
	movq	-8(%ebx),%mm2
	psllq	$60,%mm6
	movq	-16(%ebx),%mm5
	por	%mm6,%mm1
	movq	%mm0,-80(%edi)
	psrlq	$4,%mm0
	movq	%mm3,48(%edi)
	movq	%mm3,%mm7
	movq	%mm1,-88(%ebp)
	psrlq	$4,%mm3
	movq	%mm4,40(%ebp)
	shll	$4,%edx
	movb	%dl,7(%esp)
	movl	8(%ebx),%edx
	movq	8(%ebx),%mm1
	psllq	$60,%mm7
	movq	(%ebx),%mm4
	por	%mm7,%mm0
	movq	%mm2,-72(%edi)
	psrlq	$4,%mm2
	movq	%mm5,56(%edi)
	movq	%mm5,%mm6
	movq	%mm0,-80(%ebp)
	psrlq	$4,%mm5
	movq	%mm3,48(%ebp)
	shll	$4,%edx
	movb	%dl,8(%esp)
	movl	24(%ebx),%edx
	movq	24(%ebx),%mm0
	psllq	$60,%mm6
	movq	16(%ebx),%mm3
	por	%mm6,%mm2
	movq	%mm1,-64(%edi)
	psrlq	$4,%mm1
	movq	%mm4,64(%edi)
	movq	%mm4,%mm7
	movq	%mm2,-72(%ebp)
	psrlq	$4,%mm4
	movq	%mm5,56(%ebp)
	shll	$4,%edx
	movb	%dl,9(%esp)
	movl	40(%ebx),%edx
	movq	40(%ebx),%mm2
	psllq	$60,%mm7
	movq	32(%ebx),%mm5
	por	%mm7,%mm1
	movq	%mm0,-56(%edi)
	psrlq	$4,%mm0
	movq	%mm3,72(%edi)
	movq	%mm3,%mm6
	movq	%mm1,-64(%ebp)
	psrlq	$4,%mm3
	movq	%mm4,64(%ebp)
	shll	$4,%edx
	movb	%dl,10(%esp)
	movl	56(%ebx),%edx
	movq	56(%ebx),%mm1
	psllq	$60,%mm6
	movq	48(%ebx),%mm4
	por	%mm6,%mm0
	movq	%mm2,-48(%edi)
	psrlq	$4,%mm2
	movq	%mm5,80(%edi)
	movq	%mm5,%mm7
	movq	%mm0,-56(%ebp)
	psrlq	$4,%mm5
	movq	%mm3,72(%ebp)
	shll	$4,%edx
	movb	%dl,11(%esp)
	movl	72(%ebx),%edx
	movq	72(%ebx),%mm0
	psllq	$60,%mm7
	movq	64(%ebx),%mm3
	por	%mm7,%mm2
	movq	%mm1,-40(%edi)
	psrlq	$4,%mm1
	movq	%mm4,88(%edi)
	movq	%mm4,%mm6
	movq	%mm2,-48(%ebp)
	psrlq	$4,%mm4
	movq	%mm5,80(%ebp)
	shll	$4,%edx
	movb	%dl,12(%esp)
	movl	88(%ebx),%edx
	movq	88(%ebx),%mm2
	psllq	$60,%mm6
	movq	80(%ebx),%mm5
	por	%mm6,%mm1
	movq	%mm0,-32(%edi)
	psrlq	$4,%mm0
	movq	%mm3,96(%edi)
	movq	%mm3,%mm7
	movq	%mm1,-40(%ebp)
	psrlq	$4,%mm3
	movq	%mm4,88(%ebp)
	shll	$4,%edx
	movb	%dl,13(%esp)
	movl	104(%ebx),%edx
	movq	104(%ebx),%mm1
	psllq	$60,%mm7
	movq	96(%ebx),%mm4
	por	%mm7,%mm0
	movq	%mm2,-24(%edi)
	psrlq	$4,%mm2
	movq	%mm5,104(%edi)
	movq	%mm5,%mm6
	movq	%mm0,-32(%ebp)
	psrlq	$4,%mm5
	movq	%mm3,96(%ebp)
	shll	$4,%edx
	movb	%dl,14(%esp)
	movl	120(%ebx),%edx
	movq	120(%ebx),%mm0
	psllq	$60,%mm6
	movq	112(%ebx),%mm3
	por	%mm6,%mm2
	movq	%mm1,-16(%edi)
	psrlq	$4,%mm1
	movq	%mm4,112(%edi)
	movq	%mm4,%mm7
	movq	%mm2,-24(%ebp)
	psrlq	$4,%mm4
	movq	%mm5,104(%ebp)
	shll	$4,%edx
	movb	%dl,15(%esp)
	psllq	$60,%mm7
	por	%mm7,%mm1
	movq	%mm0,-8(%edi)
	psrlq	$4,%mm0
	movq	%mm3,120(%edi)
	movq	%mm3,%mm6
	movq	%mm1,-16(%ebp)
	psrlq	$4,%mm3
	movq	%mm4,112(%ebp)
	psllq	$60,%mm6
	por	%mm6,%mm0
	movq	%mm0,-8(%ebp)
	movq	%mm3,120(%ebp)
	movq	(%eax),%mm6
	movl	8(%eax),%ebx
	movl	12(%eax),%edx
.align	16
.L009outer:
	xorl	12(%ecx),%edx
	xorl	8(%ecx),%ebx
	pxor	(%ecx),%mm6
	leal	16(%ecx),%ecx
	movl	%ebx,536(%esp)
	movq	%mm6,528(%esp)
	movl	%ecx,548(%esp)
	xorl	%eax,%eax
	roll	$8,%edx
	movb	%dl,%al
	movl	%eax,%ebp
	andb	$15,%al
	shrl	$4,%ebp
	pxor	%mm0,%mm0
	roll	$8,%edx
	pxor	%mm1,%mm1
	pxor	%mm2,%mm2
	movq	16(%esp,%eax,8),%mm7
	movq	144(%esp,%eax,8),%mm6
	movb	%dl,%al
	movd	%mm7,%ebx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%edi
	psrlq	$8,%mm6
	pxor	272(%esp,%ebp,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	shrl	$4,%edi
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%ebp,8),%mm6
	xorb	(%esp,%ebp,1),%bl
	movb	%dl,%al
	movd	%mm7,%ecx
	movzbl	%bl,%ebx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%ebp
	psrlq	$8,%mm6
	pxor	272(%esp,%edi,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	shrl	$4,%ebp
	pinsrw	$2,(%esi,%ebx,2),%mm2
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%edi,8),%mm6
	xorb	(%esp,%edi,1),%cl
	movb	%dl,%al
	movl	536(%esp),%edx
	movd	%mm7,%ebx
	movzbl	%cl,%ecx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%edi
	psrlq	$8,%mm6
	pxor	272(%esp,%ebp,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm2,%mm6
	shrl	$4,%edi
	pinsrw	$2,(%esi,%ecx,2),%mm1
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%ebp,8),%mm6
	xorb	(%esp,%ebp,1),%bl
	movb	%dl,%al
	movd	%mm7,%ecx
	movzbl	%bl,%ebx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%ebp
	psrlq	$8,%mm6
	pxor	272(%esp,%edi,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm1,%mm6
	shrl	$4,%ebp
	pinsrw	$2,(%esi,%ebx,2),%mm0
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%edi,8),%mm6
	xorb	(%esp,%edi,1),%cl
	movb	%dl,%al
	movd	%mm7,%ebx
	movzbl	%cl,%ecx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%edi
	psrlq	$8,%mm6
	pxor	272(%esp,%ebp,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm0,%mm6
	shrl	$4,%edi
	pinsrw	$2,(%esi,%ecx,2),%mm2
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%ebp,8),%mm6
	xorb	(%esp,%ebp,1),%bl
	movb	%dl,%al
	movd	%mm7,%ecx
	movzbl	%bl,%ebx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%ebp
	psrlq	$8,%mm6
	pxor	272(%esp,%edi,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm2,%mm6
	shrl	$4,%ebp
	pinsrw	$2,(%esi,%ebx,2),%mm1
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%edi,8),%mm6
	xorb	(%esp,%edi,1),%cl
	movb	%dl,%al
	movl	532(%esp),%edx
	movd	%mm7,%ebx
	movzbl	%cl,%ecx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%edi
	psrlq	$8,%mm6
	pxor	272(%esp,%ebp,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm1,%mm6
	shrl	$4,%edi
	pinsrw	$2,(%esi,%ecx,2),%mm0
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%ebp,8),%mm6
	xorb	(%esp,%ebp,1),%bl
	movb	%dl,%al
	movd	%mm7,%ecx
	movzbl	%bl,%ebx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%ebp
	psrlq	$8,%mm6
	pxor	272(%esp,%edi,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm0,%mm6
	shrl	$4,%ebp
	pinsrw	$2,(%esi,%ebx,2),%mm2
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%edi,8),%mm6
	xorb	(%esp,%edi,1),%cl
	movb	%dl,%al
	movd	%mm7,%ebx
	movzbl	%cl,%ecx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%edi
	psrlq	$8,%mm6
	pxor	272(%esp,%ebp,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm2,%mm6
	shrl	$4,%edi
	pinsrw	$2,(%esi,%ecx,2),%mm1
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%ebp,8),%mm6
	xorb	(%esp,%ebp,1),%bl
	movb	%dl,%al
	movd	%mm7,%ecx
	movzbl	%bl,%ebx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%ebp
	psrlq	$8,%mm6
	pxor	272(%esp,%edi,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm1,%mm6
	shrl	$4,%ebp
	pinsrw	$2,(%esi,%ebx,2),%mm0
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%edi,8),%mm6
	xorb	(%esp,%edi,1),%cl
	movb	%dl,%al
	movl	528(%esp),%edx
	movd	%mm7,%ebx
	movzbl	%cl,%ecx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%edi
	psrlq	$8,%mm6
	pxor	272(%esp,%ebp,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm0,%mm6
	shrl	$4,%edi
	pinsrw	$2,(%esi,%ecx,2),%mm2
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%ebp,8),%mm6
	xorb	(%esp,%ebp,1),%bl
	movb	%dl,%al
	movd	%mm7,%ecx
	movzbl	%bl,%ebx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%ebp
	psrlq	$8,%mm6
	pxor	272(%esp,%edi,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm2,%mm6
	shrl	$4,%ebp
	pinsrw	$2,(%esi,%ebx,2),%mm1
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%edi,8),%mm6
	xorb	(%esp,%edi,1),%cl
	movb	%dl,%al
	movd	%mm7,%ebx
	movzbl	%cl,%ecx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%edi
	psrlq	$8,%mm6
	pxor	272(%esp,%ebp,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm1,%mm6
	shrl	$4,%edi
	pinsrw	$2,(%esi,%ecx,2),%mm0
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%ebp,8),%mm6
	xorb	(%esp,%ebp,1),%bl
	movb	%dl,%al
	movd	%mm7,%ecx
	movzbl	%bl,%ebx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%ebp
	psrlq	$8,%mm6
	pxor	272(%esp,%edi,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm0,%mm6
	shrl	$4,%ebp
	pinsrw	$2,(%esi,%ebx,2),%mm2
	pxor	16(%esp,%eax,8),%mm7
	roll	$8,%edx
	pxor	144(%esp,%eax,8),%mm6
	pxor	%mm3,%mm7
	pxor	400(%esp,%edi,8),%mm6
	xorb	(%esp,%edi,1),%cl
	movb	%dl,%al
	movl	524(%esp),%edx
	movd	%mm7,%ebx
	movzbl	%cl,%ecx
	psrlq	$8,%mm7
	movq	%mm6,%mm3
	movl	%eax,%edi
	psrlq	$8,%mm6
	pxor	272(%esp,%ebp,8),%mm7
	andb	$15,%al
	psllq	$56,%mm3
	pxor	%mm2,%mm6
	shrl	$4,%edi
	pinsrw	$2,(%esi,%ecx,2),%mm1
	pxor	16(%esp,%eax,8),%mm7
	pxor	144(%esp,%eax,8),%mm6
	xorb	(%esp,%ebp,1),%bl
	pxor	%mm3,%mm7
	pxor	400(%esp,%ebp,8),%mm6
	movzbl	%bl,%ebx
	pxor	%mm2,%mm2
	psllq	$4,%mm1
	movd	%mm7,%ecx
	psrlq	$4,%mm7
	movq	%mm6,%mm3
	psrlq	$4,%mm6
	shll	$4,%ecx
	pxor	16(%esp,%edi,8),%mm7
	psllq	$60,%mm3
	movzbl	%cl,%ecx
	pxor	%mm3,%mm7
	pxor	144(%esp,%edi,8),%mm6
	pinsrw	$2,(%esi,%ebx,2),%mm0
	pxor	%mm1,%mm6
	movd	%mm7,%edx
	pinsrw	$3,(%esi,%ecx,2),%mm2
	psllq	$12,%mm0
	pxor	%mm0,%mm6
	psrlq	$32,%mm7
	pxor	%mm2,%mm6
	movl	548(%esp),%ecx
	movd	%mm7,%ebx
	movq	%mm6,%mm3
	psllw	$8,%mm6
	psrlw	$8,%mm3
	por	%mm3,%mm6
	bswap	%edx
	pshufw	$27,%mm6,%mm6
	bswap	%ebx
	cmpl	552(%esp),%ecx
	jne	.L009outer
	movl	544(%esp),%eax
	movl	%edx,12(%eax)
	movl	%ebx,8(%eax)
	movq	%mm6,(%eax)
	movl	556(%esp),%esp
	emms
	popl	%edi
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
.size	gcm_ghash_4bit_mmx,.-.L_gcm_ghash_4bit_mmx_begin
.globl	gcm_init_clmul
.type	gcm_init_clmul,@function
.align	16
gcm_init_clmul:
.L_gcm_init_clmul_begin:
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	call	.L010pic
.L010pic:
	popl	%ecx
	leal	.Lbswap-.L010pic(%ecx),%ecx
	movdqu	(%eax),%xmm2
	pshufd	$78,%xmm2,%xmm2
	pshufd	$255,%xmm2,%xmm4
	movdqa	%xmm2,%xmm3
	psllq	$1,%xmm2
	pxor	%xmm5,%xmm5
	psrlq	$63,%xmm3
	pcmpgtd	%xmm4,%xmm5
	pslldq	$8,%xmm3
	por	%xmm3,%xmm2
	pand	16(%ecx),%xmm5
	pxor	%xmm5,%xmm2
	movdqa	%xmm2,%xmm0
	movdqa	%xmm0,%xmm1
	pshufd	$78,%xmm0,%xmm3
	pshufd	$78,%xmm2,%xmm4
	pxor	%xmm0,%xmm3
	pxor	%xmm2,%xmm4
.byte	102,15,58,68,194,0
.byte	102,15,58,68,202,17
.byte	102,15,58,68,220,0
	xorps	%xmm0,%xmm3
	xorps	%xmm1,%xmm3
	movdqa	%xmm3,%xmm4
	psrldq	$8,%xmm3
	pslldq	$8,%xmm4
	pxor	%xmm3,%xmm1
	pxor	%xmm4,%xmm0
	movdqa	%xmm0,%xmm3
	psllq	$1,%xmm0
	pxor	%xmm3,%xmm0
	psllq	$5,%xmm0
	pxor	%xmm3,%xmm0
	psllq	$57,%xmm0
	movdqa	%xmm0,%xmm4
	pslldq	$8,%xmm0
	psrldq	$8,%xmm4
	pxor	%xmm3,%xmm0
	pxor	%xmm4,%xmm1
	movdqa	%xmm0,%xmm4
	psrlq	$5,%xmm0
	pxor	%xmm4,%xmm0
	psrlq	$1,%xmm0
	pxor	%xmm4,%xmm0
	pxor	%xmm1,%xmm4
	psrlq	$1,%xmm0
	pxor	%xmm4,%xmm0
	movdqu	%xmm2,(%edx)
	movdqu	%xmm0,16(%edx)
	ret
.size	gcm_init_clmul,.-.L_gcm_init_clmul_begin
.globl	gcm_gmult_clmul
.type	gcm_gmult_clmul,@function
.align	16
gcm_gmult_clmul:
.L_gcm_gmult_clmul_begin:
	movl	4(%esp),%eax
	movl	8(%esp),%edx
	call	.L011pic
.L011pic:
	popl	%ecx
	leal	.Lbswap-.L011pic(%ecx),%ecx
	movdqu	(%eax),%xmm0
	movdqa	(%ecx),%xmm5
	movups	(%edx),%xmm2
.byte	102,15,56,0,197
	movdqa	%xmm0,%xmm1
	pshufd	$78,%xmm0,%xmm3
	pshufd	$78,%xmm2,%xmm4
	pxor	%xmm0,%xmm3
	pxor	%xmm2,%xmm4
.byte	102,15,58,68,194,0
.byte	102,15,58,68,202,17
.byte	102,15,58,68,220,0
	xorps	%xmm0,%xmm3
	xorps	%xmm1,%xmm3
	movdqa	%xmm3,%xmm4
	psrldq	$8,%xmm3
	pslldq	$8,%xmm4
	pxor	%xmm3,%xmm1
	pxor	%xmm4,%xmm0
	movdqa	%xmm0,%xmm3
	psllq	$1,%xmm0
	pxor	%xmm3,%xmm0
	psllq	$5,%xmm0
	pxor	%xmm3,%xmm0
	psllq	$57,%xmm0
	movdqa	%xmm0,%xmm4
	pslldq	$8,%xmm0
	psrldq	$8,%xmm4
	pxor	%xmm3,%xmm0
	pxor	%xmm4,%xmm1
	movdqa	%xmm0,%xmm4
	psrlq	$5,%xmm0
	pxor	%xmm4,%xmm0
	psrlq	$1,%xmm0
	pxor	%xmm4,%xmm0
	pxor	%xmm1,%xmm4
	psrlq	$1,%xmm0
	pxor	%xmm4,%xmm0
.byte	102,15,56,0,197
	movdqu	%xmm0,(%eax)
	ret
.size	gcm_gmult_clmul,.-.L_gcm_gmult_clmul_begin
.globl	gcm_ghash_clmul
.type	gcm_ghash_clmul,@function
.align	16
gcm_ghash_clmul:
.L_gcm_ghash_clmul_begin:
	pushl	%ebp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	movl	20(%esp),%eax
	movl	24(%esp),%edx
	movl	28(%esp),%esi
	movl	32(%esp),%ebx
	call	.L012pic
.L012pic:
	popl	%ecx
	leal	.Lbswap-.L012pic(%ecx),%ecx
	movdqu	(%eax),%xmm0
	movdqa	(%ecx),%xmm5
	movdqu	(%edx),%xmm2
.byte	102,15,56,0,197
	subl	$16,%ebx
	jz	.L013odd_tail
	movdqu	(%esi),%xmm3
	movdqu	16(%esi),%xmm6
.byte	102,15,56,0,221
.byte	102,15,56,0,245
	pxor	%xmm3,%xmm0
	movdqa	%xmm6,%xmm7
	pshufd	$78,%xmm6,%xmm3
	pshufd	$78,%xmm2,%xmm4
	pxor	%xmm6,%xmm3
	pxor	%xmm2,%xmm4
.byte	102,15,58,68,242,0
.byte	102,15,58,68,250,17
.byte	102,15,58,68,220,0
	xorps	%xmm6,%xmm3
	xorps	%xmm7,%xmm3
	movdqa	%xmm3,%xmm4
	psrldq	$8,%xmm3
	pslldq	$8,%xmm4
	pxor	%xmm3,%xmm7
	pxor	%xmm4,%xmm6
	movups	16(%edx),%xmm2
	leal	32(%esi),%esi
	subl	$32,%ebx
	jbe	.L014even_tail
.L015mod_loop:
	movdqa	%xmm0,%xmm1
	pshufd	$78,%xmm0,%xmm3
	pshufd	$78,%xmm2,%xmm4
	pxor	%xmm0,%xmm3
	pxor	%xmm2,%xmm4
.byte	102,15,58,68,194,0
.byte	102,15,58,68,202,17
.byte	102,15,58,68,220,0
	xorps	%xmm0,%xmm3
	xorps	%xmm1,%xmm3
	movdqa	%xmm3,%xmm4
	psrldq	$8,%xmm3
	pslldq	$8,%xmm4
	pxor	%xmm3,%xmm1
	pxor	%xmm4,%xmm0
	movdqu	(%esi),%xmm3
	movups	(%edx),%xmm2
	pxor	%xmm6,%xmm0
	pxor	%xmm7,%xmm1
	movdqu	16(%esi),%xmm6
.byte	102,15,56,0,221
.byte	102,15,56,0,245
	movdqa	%xmm6,%xmm5
	movdqa	%xmm6,%xmm7
	pxor	%xmm3,%xmm1
	movdqa	%xmm0,%xmm3
	psllq	$1,%xmm0
	pxor	%xmm3,%xmm0
	psllq	$5,%xmm0
	pxor	%xmm3,%xmm0
.byte	102,15,58,68,242,0
	psllq	$57,%xmm0
	movdqa	%xmm0,%xmm4
	pslldq	$8,%xmm0
	psrldq	$8,%xmm4
	pxor	%xmm3,%xmm0
	pshufd	$78,%xmm5,%xmm3
	pxor	%xmm4,%xmm1
	pxor	%xmm5,%xmm3
	pshufd	$78,%xmm2,%xmm5
	pxor	%xmm2,%xmm5
.byte	102,15,58,68,250,17
	movdqa	%xmm0,%xmm4
	psrlq	$5,%xmm0
	pxor	%xmm4,%xmm0
	psrlq	$1,%xmm0
	pxor	%xmm4,%xmm0
	pxor	%xmm1,%xmm4
	psrlq	$1,%xmm0
	pxor	%xmm4,%xmm0
.byte	102,15,58,68,221,0
	movups	16(%edx),%xmm2
	xorps	%xmm6,%xmm3
	xorps	%xmm7,%xmm3
	movdqa	%xmm3,%xmm5
	psrldq	$8,%xmm3
	pslldq	$8,%xmm5
	pxor	%xmm3,%xmm7
	pxor	%xmm5,%xmm6
	movdqa	(%ecx),%xmm5
	leal	32(%esi),%esi
	subl	$32,%ebx
	ja	.L015mod_loop
.L014even_tail:
	movdqa	%xmm0,%xmm1
	pshufd	$78,%xmm0,%xmm3
	pshufd	$78,%xmm2,%xmm4
	pxor	%xmm0,%xmm3
	pxor	%xmm2,%xmm4
.byte	102,15,58,68,194,0
.byte	102,15,58,68,202,17
.byte	102,15,58,68,220,0
	xorps	%xmm0,%xmm3
	xorps	%xmm1,%xmm3
	movdqa	%xmm3,%xmm4
	psrldq	$8,%xmm3
	pslldq	$8,%xmm4
	pxor	%xmm3,%xmm1
	pxor	%xmm4,%xmm0
	pxor	%xmm6,%xmm0
	pxor	%xmm7,%xmm1
	movdqa	%xmm0,%xmm3
	psllq	$1,%xmm0
	pxor	%xmm3,%xmm0
	psllq	$5,%xmm0
	pxor	%xmm3,%xmm0
	psllq	$57,%xmm0
	movdqa	%xmm0,%xmm4
	pslldq	$8,%xmm0
	psrldq	$8,%xmm4
	pxor	%xmm3,%xmm0
	pxor	%xmm4,%xmm1
	movdqa	%xmm0,%xmm4
	psrlq	$5,%xmm0
	pxor	%xmm4,%xmm0
	psrlq	$1,%xmm0
	pxor	%xmm4,%xmm0
	pxor	%xmm1,%xmm4
	psrlq	$1,%xmm0
	pxor	%xmm4,%xmm0
	testl	%ebx,%ebx
	jnz	.L016done
	movups	(%edx),%xmm2
.L013odd_tail:
	movdqu	(%esi),%xmm3
.byte	102,15,56,0,221
	pxor	%xmm3,%xmm0
	movdqa	%xmm0,%xmm1
	pshufd	$78,%xmm0,%xmm3
	pshufd	$78,%xmm2,%xmm4
	pxor	%xmm0,%xmm3
	pxor	%xmm2,%xmm4
.byte	102,15,58,68,194,0
.byte	102,15,58,68,202,17
.byte	102,15,58,68,220,0
	xorps	%xmm0,%xmm3
	xorps	%xmm1,%xmm3
	movdqa	%xmm3,%xmm4
	psrldq	$8,%xmm3
	pslldq	$8,%xmm4
	pxor	%xmm3,%xmm1
	pxor	%xmm4,%xmm0
	movdqa	%xmm0,%xmm3
	psllq	$1,%xmm0
	pxor	%xmm3,%xmm0
	psllq	$5,%xmm0
	pxor	%xmm3,%xmm0
	psllq	$57,%xmm0
	movdqa	%xmm0,%xmm4
	pslldq	$8,%xmm0
	psrldq	$8,%xmm4
	pxor	%xmm3,%xmm0
	pxor	%xmm4,%xmm1
	movdqa	%xmm0,%xmm4
	psrlq	$5,%xmm0
	pxor	%xmm4,%xmm0
	psrlq	$1,%xmm0
	pxor	%xmm4,%xmm0
	pxor	%xmm1,%xmm4
	psrlq	$1,%xmm0
	pxor	%xmm4,%xmm0
.L016done:
.byte	102,15,56,0,197
	movdqu	%xmm0,(%eax)
	popl	%edi
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
.size	gcm_ghash_clmul,.-.L_gcm_ghash_clmul_begin
.align	64
.Lbswap:
.byte	15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0
.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,194
.align	64
.Lrem_4bit:
.long	0,0,0,471859200,0,943718400,0,610271232
.long	0,1887436800,0,1822425088,0,1220542464,0,1423966208
.long	0,3774873600,0,4246732800,0,3644850176,0,3311403008
.long	0,2441084928,0,2376073216,0,2847932416,0,3051356160
.align	64
.Lrem_8bit:
.value	0,450,900,582,1800,1738,1164,1358
.value	3600,4050,3476,3158,2328,2266,2716,2910
.value	7200,7650,8100,7782,6952,6890,6316,6510
.value	4656,5106,4532,4214,5432,5370,5820,6014
.value	14400,14722,15300,14854,16200,16010,15564,15630
.value	13904,14226,13780,13334,12632,12442,13020,13086
.value	9312,9634,10212,9766,9064,8874,8428,8494
.value	10864,11186,10740,10294,11640,11450,12028,12094
.value	28800,28994,29444,29382,30600,30282,29708,30158
.value	32400,32594,32020,31958,31128,30810,31260,31710
.value	27808,28002,28452,28390,27560,27242,26668,27118
.value	25264,25458,24884,24822,26040,25722,26172,26622
.value	18624,18690,19268,19078,20424,19978,19532,19854
.value	18128,18194,17748,17558,16856,16410,16988,17310
.value	21728,21794,22372,22182,21480,21034,20588,20910
.value	23280,23346,22900,22710,24056,23610,24188,24510
.value	57600,57538,57988,58182,58888,59338,58764,58446
.value	61200,61138,60564,60758,59416,59866,60316,59998
.value	64800,64738,65188,65382,64040,64490,63916,63598
.value	62256,62194,61620,61814,62520,62970,63420,63102
.value	55616,55426,56004,56070,56904,57226,56780,56334
.value	55120,54930,54484,54550,53336,53658,54236,53790
.value	50528,50338,50916,50982,49768,50090,49644,49198
.value	52080,51890,51444,51510,52344,52666,53244,52798
.value	37248,36930,37380,37830,38536,38730,38156,38094
.value	40848,40530,39956,40406,39064,39258,39708,39646
.value	36256,35938,36388,36838,35496,35690,35116,35054
.value	33712,33394,32820,33270,33976,34170,34620,34558
.value	43456,43010,43588,43910,44744,44810,44364,44174
.value	42960,42514,42068,42390,41176,41242,41820,41630
.value	46560,46114,46692,47014,45800,45866,45420,45230
.value	48112,47666,47220,47542,48376,48442,49020,48830
.byte	71,72,65,83,72,32,102,111,114,32,120,56,54,44,32,67
.byte	82,89,80,84,79,71,65,77,83,32,98,121,32,60,97,112
.byte	112,114,111,64,111,112,101,110,115,115,108,46,111,114,103,62
.byte	0
