;命令の記述を定義
_TEXT	segment		

;データサイズ毎のデータ取り出し
	public asmSample	
	align 16	

asmSample	proc
	mov eax, 01020304h
	mov [rcx],al
	mov [rdx],ax
	mov [r8],eax
	ret
asmSample	endp

;配列 アクセス
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

;整数加算関数
	public addint
	align 16

addint proc
	add ecx,edx
	mov eax,ecx		;RAXが戻り値レジスタ
	ret
addint endp

;実数加算関数 浮動小数
	public adddouble
	align 16

adddouble proc
	addsd xmm0,xmm1
	ret
adddouble endp

;加算関数
	public addfunc
	align 16
addfunc proc
	add ecx,edx
	mov eax,ecx
	ret
addfunc endp

;減算関数
	public subfunc
	align 16
subfunc proc
	sub ecx,edx
	mov eax,ecx
	ret
subfunc endp

;乗算関数
	public mulfunc
	align 16
mulfunc proc
	mov eax,ecx
	imul edx			;乗算
	ret
mulfunc endp

;除算関数
	public divfunc
	align 16
divfunc proc
	mov eax,ecx
	mov ecx,edx
	mov edx,eax
	sar edx,31
	idiv ecx			;除算
	ret
divfunc endp

;命令の記述終了
_TEXT	ends
end	