REM �ļ�ͳ��
REM �����ļ�λ�ú��ļ����֣�����ͳ����Ŀ
@echo off && setlocal enabledelayedexpansion

echo ȫ���ļ��б�:>> �ļ��б�.txt
dir /s /b | findstr /v /n "git readme bat �ļ��б�">> �ļ��б�.txt
echo.>> �ļ��б�.txt
echo.>> �ļ��б�.txt
echo ɸѡ���ͳ���ļ�:>> �ļ��б�.txt
dir /s /b | findstr /v "git readme bat �ļ��б�" | findstr /n .>> �ļ��б�.txt