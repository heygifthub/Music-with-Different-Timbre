fs=44100;
song=readmidi('../midi/Storybrooke.mid');
score=midiInfo(song,0);%���������Ϣ
len=ceil((score(end,6)+5)*fs);%��ò�������
y=zeros(len,1);
for i=1:size(score,1)%��������
    tbegin=score(i,5);%��������ʼʱ��
    tend=score(i,6);%������ֹͣʱ��
    t=tend-tbegin;%��������ʱ��
    pitch=score(i,3);%��������
    frequency=midi2freq(pitch);%����Ƶ��
    x=pianoTimbre(t,frequency);%�ϳɶ�Ӧ����
    nbegin=max(1,round(tbegin*fs));
    y(nbegin:(nbegin+length(x)-1))=y(nbegin:(nbegin+length(x)-1))+x;%�ڶ�Ӧλ�ò�������
    process=i/size(score,1)*100%�ϳɽ���
end
y=y/max(abs(y));
audiowrite('Storybrooke.mp4',y,fs);
