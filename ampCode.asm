;���߂̋L�q���`
_TEXT	segment		

;�f�[�^�T�C�Y���̃f�[�^���o��
	public asmSample	
	align 16	

asmSample	proc
	mov eax, 01020304h
	mov [rcx],al
	mov [rdx],ax
	mov [r8],eax
	ret
asmSample	endp

;�z�� �A�N�Z�X
	public arraySample
	align 16

arraySample proc
	mov dword ptr[rcx+4 * 0],1
	mov dword ptr[rcx+4 * 1],2
	mov dword ptr[rcx+4 * 2],3
	mov dword ptr[rcx+4 * 3],4
	mov dword ptr[rcx+4 * 4],5
	ret
arraySample endp

;�������Z�֐�
	public addint
	align 16

addint proc
	add ecx,edx
	mov eax,ecx		;RAX���߂�l���W�X�^
	ret
addint endp

;�������Z�֐� ��������
	public adddouble
	align 16

adddouble proc
	addsd xmm0,xmm1
	ret
adddouble endp

;���Z�֐�
	public addfunc
	align 16
addfunc proc
	add ecx,edx
	mov eax,ecx
	ret
addfunc endp

;���Z�֐�
	public subfunc
	align 16
subfunc proc
	sub ecx,edx
	mov eax,ecx
	ret
subfunc endp

;��Z�֐�
	public mulfunc
	align 16
mulfunc proc
	mov eax,ecx
	imul edx			;��Z
	ret
mulfunc endp

;���Z�֐�
	public divfunc
	align 16
divfunc proc
	mov eax,ecx
	mov ecx,edx
	mov edx,eax
	sar edx,31
	idiv ecx			;���Z
	ret
divfunc endp

;���߂̋L�q�I��
_TEXT	ends
end	