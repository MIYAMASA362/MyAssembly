// Assembly_Lesson01.cpp : このファイルには 'main' 関数が含まれています。プログラム実行の開始と終了がそこで行われます。
//


#include "pch.h"
#include <iostream>

#include<stdio.h>

//C++言語において関数オーバーライドによる、変換を回避。一意にする
extern "C"
{
	void asmSample(char* ca, short* sa, int* ia);
	void arraySample(int a[]);
	int addint(int a, int b);
	double adddouble(double a, double b);

	int addfunc(int a, int b);
	int subfunc(int a, int b);

	int mulfunc(int a,int b);
	int divfunc(int a,int b);
}

int main()
{
	int a, b = -2, c = 3;

	a = mulfunc(b,c);
	printf("%d * %d = %d\n",b,c,a);

	b = -31, c = -5;
	a = divfunc(b,c);
	printf("%d / %d = %d\n",b,c,a);
	return 0;
}

// プログラムの実行: Ctrl + F5 または [デバッグ] > [デバッグなしで開始] メニュー
// プログラムのデバッグ: F5 または [デバッグ] > [デバッグの開始] メニュー

// 作業を開始するためのヒント: 
//    1. ソリューション エクスプローラー ウィンドウを使用してファイルを追加/管理します 
//   2. チーム エクスプローラー ウィンドウを使用してソース管理に接続します
//   3. 出力ウィンドウを使用して、ビルド出力とその他のメッセージを表示します
//   4. エラー一覧ウィンドウを使用してエラーを表示します
//   5. [プロジェクト] > [新しい項目の追加] と移動して新しいコード ファイルを作成するか、[プロジェクト] > [既存の項目の追加] と移動して既存のコード ファイルをプロジェクトに追加します
//   6. 後ほどこのプロジェクトを再び開く場合、[ファイル] > [開く] > [プロジェクト] と移動して .sln ファイルを選択します
