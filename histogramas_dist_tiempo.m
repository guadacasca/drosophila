dist_pos_PER01=load('distancias_monitor1_1seg.dat');
dist_pos_YW=load('distancias_monitor2_1seg.dat');
n_PER01=length(dist_pos_PER01);
n_YW=length(dist_pos_YW);
t=1:n_YW;
nfly=10;
npos=2*nfly;  %la distancia corresponde a los nros impares!
ndist=npos-1; %la posicion de esa mosca es el nro par siguiente

jexp=1;
jcom=1;
for i=381541:n_YW  %solo considero DD (desde el sabado a las 20 hs)
   if(dist_pos_YW(i,npos)==1)  %pos=1 exploracion; pos=2 comida  
     jexp=jexp+1;
   elseif(dist_pos_YW(i,npos)==2)
     jcom=jcom+1;
   end
end

exploracion_YW=zeros(jexp,2);
comida_YW=zeros(jcom,2);

jexp=1;
jcom=1;
for i=381541:n_PER01  %solo considero DD (desde el sabado a las 20 hs)
   if(dist_pos_PER01(i,npos)==1)  %pos=1 exploracion; pos=2 comida  
     exploracion_YW(jexp,1)=t(i);
     exploracion_YW(jexp,2)=dist_pos_PER01(i,ndist);
     jexp=jexp+1;
   elseif(dist_pos_PER01(i,npos)==2)
     comida_YW(jcom,1)=t(i);
     comida_YW(jcom,2)=dist_pos_PER01(i,ndist);
     jcom=jcom+1;
   end
end

total_YW_DD=[t(381541:n_YW)' dist_pos_YW(381541:n_YW,ndist)]; 

lombscargle(comida_YW)



