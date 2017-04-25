posicion_fly_YW=load('Monitor02_B.dat');
posicion_fly_PER01=load('Monitor01_B.dat');
nfly=2;
xfly=2*nfly; yfly=2*nfly+1;
nt=length(posicion_fly_PER01);
tiempo=1:nt;
C = {'k','b','r','g','y',[116 57 213]./255,[130 125 127]./255,[6 199 18]./255,[238 85 247]./255, [85 230 227]./255};

x_cm=0; y_cm=0;
for nfly=1:10
    xfly=2*nfly; yfly=2*nfly+1;
    radios_fly_PER01(:,nfly)=sqrt((posicion_fly_PER01(:,xfly)-x_cm).^2+(posicion_fly_PER01(:,yfly)-y_cm).^2);
    radios_fly_YW(:,nfly)=sqrt((posicion_fly_YW(:,xfly)-x_cm).^2+(posicion_fly_YW(:,yfly)-y_cm).^2);
end

% radios_prom_PER01=mean(radios_fly_PER01,2);
% radios_prom_YW=mean(radios_fly_YW,2);
% 
% r_cm_PER01=0;
% r_cm_YW=0;
% n1=1;
% for t=1:nt
%     r_cm_PER01=r_cm_PER01+radios_prom_PER01(t,1);
%     r_cm_YW=r_cm_YW+radios_prom_YW(t,1);
%     n1=n1+1;
% end
% 
% r_cm_PER01=r_cm_PER01/n1;
% r_cm_YW=r_cm_YW/n1;
% 
% n=1;
% desv_PER01=0;
% desv_YW=0;
% for t=1:nt
%     desv_PER01=desv_PER01+(radios_prom_PER01(t,1)-r_cm_PER01)^2;
%     desv_YW=desv_YW+(radios_prom_YW(t,1)-r_cm_YW)^2;
%     radius_gyr_PER01(n)=sqrt((1/n)*desv_PER01);
%     radius_gyr_YW(n)=sqrt((1/n)*desv_YW);
%     n=n+1;
% end
% 
% plot(tiempo(1:nt)/3600,radius_gyr_PER01(1:n-1),'-ks', 'LineWidth', 1, 'MarkerSize', 1,'marker','o','color','r');
% hold on
% plot(tiempo(1:nt)/3600,radius_gyr_YW(1:n-1),'-ks', 'LineWidth', 1, 'MarkerSize', 1,'marker','o','color','g');
% 

for nfly=1:10

r_cm_PER01=0;
r_cm_YW=0;
n1=1;
for t=1:nt
    r_cm_PER01=r_cm_PER01+radios_fly_PER01(t,1);
    r_cm_YW=r_cm_YW+radios_fly_YW(t,1);
    n1=n1+1;
end

r_cm_PER01=r_cm_PER01/n1;
r_cm_YW=r_cm_YW/n1;

n=1;
desv_PER01=0;
desv_YW=0;
for t=1:nt
    desv_PER01=desv_PER01+(radios_fly_PER01(t,1)-r_cm_PER01)^2;
    desv_YW=desv_YW+(radios_fly_YW(t,1)-r_cm_YW)^2;
    radius_gyr_PER01(n,nfly)=sqrt((1/n)*desv_PER01);
    radius_gyr_YW(n,nfly)=sqrt((1/n)*desv_YW);
    n=n+1;
end

%plot(tiempo(1:nt)/3600,radius_gyr(1:n-1),'-ks', 'LineWidth', 1, 'MarkerSize', 1,'color',C{nfly},'marker','o');
%hold on

end

radius_gyr_PER01_prom=mean(radius_gyr_PER01,2);
radius_gyr_YW_prom=mean(radius_gyr_YW,2);

plot(tiempo(1:nt)/3600,radius_gyr_PER01_prom(1:n-1),'-ks', 'LineWidth', 1, 'MarkerSize', 1,'color','k','marker','o');
hold on
plot(tiempo(1:nt)/3600,radius_gyr_YW_prom(1:n-1),'-ks', 'LineWidth', 1, 'MarkerSize', 1,'color','r','marker','o');
legend({'radius-PER01-prom';'radius-YW-prom'})
%legend({'YW_1';'YW_2';'YW_3';'YW_4';'YW_5';'YW_6';'YW_7';'YW_8';'YW_9';'YW_10'})

