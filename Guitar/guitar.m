function y= guitar(fs,t,f,timbre)
%GUITARMUSIC Summary of this function goes here
%   Detailed explanation goes here
%�ܲ�������
N=round(fs*t);
%ÿ���ڲ�������
p=(1/f)*fs;
l=ceil(p);
%����������
np=floor(N/p)-1;
%�������һ�������ź�
part=timbre(1:l);
part=part-mean(part);
%����Nx1�Ŀվ���
y=zeros(N,1);
r=0.5;
for i=1:np
    part=part*r+[part(end);part(1:end-1)]*(1-r);
    pos=floor((i-1)*p+1);
    y(pos:pos+l-1)=part;
end
y=y.*linspace(1,0,length(y))';

end

