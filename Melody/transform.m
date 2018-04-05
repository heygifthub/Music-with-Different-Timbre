function [t,f] = transform(do,note,tbase,pitch)
%TRANSFORM Summary of this function goes here
%   Detailed explanation goes here
%do ������1=A
%note ��������
%tbase һ��ȫ����ʱ��
%pitch ����
A=440;
fbase=A;
switch do
    case 'C'
        fbase=A*2^(-9/12);
    case 'D'
        fbase=A*2^(-7/12);
    case 'E'
        fbase=A*2^(-5/12);
    case 'F'
        fbase=A*2^(-4/12);
    case 'G'
        fbase=A*2^(-2/12);
    case 'A'
        fbase=A*2^(0/12);
    case 'B'
        fbase=A*2^(2/12);
    otherwise
end
f=fbase*2^(pitch/12);
t=tbase/note;
end

