data1=load('distancias_monitor2_1mto.dat');
n=length(data1); %solo consideramos por ahora los primeros 3 días (LD)
tiempo_LD=1:4320;
tiempo_DD=7200:11520;

for i=1:10
%mosca_LD(:,:,i)=[tiempo_LD' data1(1:4320,i)];
mosca_DD(:,:,i)=[tiempo_DD' data1(7200:11520,i)];
lombscargle(mosca_DD(:,:,i))
end


