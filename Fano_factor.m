data = load('Moni01Sebacorrdistall.dat');
nmin=1;
nmax=length(data);
nmoscas = 9;
umbral = 1; %minima distancia recorrida para que considere movimiento
data_umb = (data(nmin:nmax,:)>umbral);  %matriz de 1 y 0
intervals=25;
y = logspace(1,5,intervals);

for j=1:intervals
    
    n=fix(y(1,j));
    windows=fix((nmax-nmin)/n);
    
    for nfly=1:nmoscas
    
        Index = find(data_umb(1:n,nfly+1) > 0);
        nk(1) = length(Index);
        dif(1)= nk(1);
        dif_medio_2(1)= dif(1)^2;
        nk_medio(1) = nk(1);
        nk_medio_2(1) = (nk(1)^2);
            
        for i=2:windows
    
            Index = find(data_umb(1+(i-1)*n:i*n,nfly+1) > 0);
            nk(i) = length(Index);
            dif(i)= nk(i) - nk(i-1);
            dif_medio_2(i)=dif_medio_2(i-1)+dif(i)^2;
            nk_medio(i) = nk_medio(i-1) + nk(i);
            nk_medio_2(i) = nk_medio_2(i-1) + (nk(i)^2);
                       
        end
    
        nk_medio = nk_medio/windows;
        nk_medio_2 = nk_medio_2/windows;
        dif_medio_2 = dif_medio_2/windows;
        
    
        FF(j,nfly) = (nk_medio_2 - (nk_medio.^2))/nk_medio;
        FA(j,nfly) = dif_medio_2/(2*nk_medio);
           
    end
    
    FF_prom(j)=sum(FF(j,nfly),2)/nmoscas;
    FA_prom(j)=sum(FA(j,nfly),2)/nmoscas;
              
end

i=1:intervals;

% loglog(y(1,i),FF_prom(i),'ko','color','k','MarkerSize',6,'MarkerFaceColor', 'k')
% hold on
% loglog(y(1,i),FA_prom(i),'ko','color','r','MarkerSize',6,'MarkerFaceColor', 'r')
% hold on
% loglog(y(1,i),FF_prom_DD(i),'ko','color','g','MarkerSize',6,'MarkerFaceColor', 'g')
% hold on
% loglog(y(1,i),FA_prom_DD(i),'ko','color','b','MarkerSize',6,'MarkerFaceColor', 'b')
% legend('CS Factor de Fano LD','CS Factor de Allan LD','CS Factor de Fano DD','CS Factor de Allan DD')

for nfly=1:1
    loglog(y(1,i),FF(i,nfly),'-ko','color','k','MarkerSize',6,'MarkerFaceColor', 'k')
    hold on
    loglog(y(1,i),FA(i,nfly),'-ko','color','r','MarkerSize',6,'MarkerFaceColor', 'r')
    legend('per01 Factor de Fano','per01 Factor de Allan')
end
 


