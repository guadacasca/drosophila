posicion_fly=load('Monitor02_B.dat');
n=length(posicion_fly);
yfly=9;
xfly=8;
zona=zeros(4,10);
x=linspace(0,40,5);
y=linspace(0,400,11);


for i=32400:118800  %solo considero los dos primeros dias
        if (0<posicion_fly(i,yfly)) && (40>posicion_fly(i,yfly))
            if (0<posicion_fly(i,xfly)) && (20>posicion_fly(i,xfly))
                zona(1,1)=zona(1,1)+1;
            elseif (20<posicion_fly(i,xfly)) && (40>posicion_fly(i,xfly))
                zona(2,1)=zona(2,1)+1;
            elseif (40<posicion_fly(i,xfly)) && (60>posicion_fly(i,xfly))
                zona(3,1)=zona(3,1)+1;
            else
                zona(4,1)=zona(4,1)+1;
            end
        elseif (40<posicion_fly(i,yfly)) && (80>posicion_fly(i,yfly))
            if (0<posicion_fly(i,xfly)) && (20>posicion_fly(i,xfly))
                zona(1,2)=zona(1,2)+1;
            elseif (20<posicion_fly(i,xfly)) && (40>posicion_fly(i,xfly))
                zona(2,2)=zona(2,2)+1;
            elseif (40<posicion_fly(i,xfly)) && (60>posicion_fly(i,xfly))
                zona(3,2)=zona(3,2)+1;
            else
                zona(4,2)=zona(4,2)+1;
            end
        elseif (80<posicion_fly(i,yfly)) && (120>posicion_fly(i,yfly))
           if (0<posicion_fly(i,xfly)) && (20>posicion_fly(i,xfly))
                zona(1,3)=zona(1,3)+1;
            elseif (20<posicion_fly(i,xfly)) && (40>posicion_fly(i,xfly))
                zona(2,3)=zona(2,3)+1;
            elseif (40<posicion_fly(i,xfly)) && (60>posicion_fly(i,xfly))
                zona(3,3)=zona(3,3)+1;
            else
                zona(4,3)=zona(4,3)+1;
            end
        elseif (120<posicion_fly(i,yfly)) && (160>posicion_fly(i,yfly))
            if (0<posicion_fly(i,xfly)) && (20>posicion_fly(i,xfly))
                zona(1,4)=zona(1,4)+1;
            elseif (20<posicion_fly(i,xfly)) && (40>posicion_fly(i,xfly))
                zona(2,4)=zona(2,4)+1;
            elseif (40<posicion_fly(i,xfly)) && (60>posicion_fly(i,xfly))
                zona(3,4)=zona(3,4)+1;
            else
                zona(4,4)=zona(4,4)+1;
            end
        elseif (160<posicion_fly(i,yfly)) && (200>posicion_fly(i,yfly))
            if (0<posicion_fly(i,xfly)) && (20>posicion_fly(i,xfly))
                zona(1,5)=zona(1,5)+1;
            elseif (20<posicion_fly(i,xfly)) && (40>posicion_fly(i,xfly))
                zona(2,5)=zona(2,5)+1;
            elseif (40<posicion_fly(i,xfly)) && (60>posicion_fly(i,xfly))
                zona(3,5)=zona(3,5)+1;
            else
                zona(4,5)=zona(4,5)+1;
            end
        elseif (200<posicion_fly(i,yfly)) && (240>posicion_fly(i,yfly))
            if (0<posicion_fly(i,xfly)) && (20>posicion_fly(i,xfly))
                zona(1,6)=zona(1,6)+1;
            elseif (20<posicion_fly(i,xfly)) && (40>posicion_fly(i,xfly))
                zona(2,6)=zona(2,6)+1;
            elseif (40<posicion_fly(i,xfly)) && (60>posicion_fly(i,xfly))
                zona(3,6)=zona(3,6)+1;
            else
                zona(4,6)=zona(4,6)+1;
            end
        elseif (240<posicion_fly(i,yfly)) && (280>posicion_fly(i,yfly))
            if (0<posicion_fly(i,xfly)) && (20>posicion_fly(i,xfly))
                zona(1,7)=zona(1,7)+1;
            elseif (20<posicion_fly(i,xfly)) && (40>posicion_fly(i,xfly))
                zona(2,7)=zona(2,7)+1;
            elseif (40<posicion_fly(i,xfly)) && (60>posicion_fly(i,xfly))
                zona(3,7)=zona(3,7)+1;
            else
                zona(4,7)=zona(4,7)+1;
            end
        elseif (280<posicion_fly(i,yfly)) && (320>posicion_fly(i,yfly))
            if (0<posicion_fly(i,xfly)) && (20>posicion_fly(i,xfly))
                zona(1,8)=zona(1,8)+1;
            elseif (20<posicion_fly(i,xfly)) && (40>posicion_fly(i,xfly))
                zona(2,8)=zona(2,8)+1;
            elseif (40<posicion_fly(i,xfly)) && (60>posicion_fly(i,xfly))
                zona(3,8)=zona(3,8)+1;
            else
                zona(4,8)=zona(4,8)+1;
            end
        elseif (320<posicion_fly(i,yfly)) && (360>posicion_fly(i,yfly))
            if (0<posicion_fly(i,xfly)) && (20>posicion_fly(i,xfly))
                zona(1,9)=zona(1,9)+1;
            elseif (20<posicion_fly(i,xfly)) && (40>posicion_fly(i,xfly))
                zona(2,9)=zona(2,9)+1;
            elseif (40<posicion_fly(i,xfly)) && (60>posicion_fly(i,xfly))
                zona(3,9)=zona(3,9)+1;
            else
                zona(4,9)=zona(4,9)+1;
            end
        elseif (360<posicion_fly(i,yfly)) && (400>posicion_fly(i,yfly))
            if (0<posicion_fly(i,xfly)) && (20>posicion_fly(i,xfly))
                zona(1,10)=zona(1,10)+1;
            elseif (20<posicion_fly(i,xfly)) && (40>posicion_fly(i,xfly))
                zona(2,10)=zona(2,10)+1;
            elseif (40<posicion_fly(i,xfly)) && (60>posicion_fly(i,xfly))
                zona(3,10)=zona(3,10)+1;
            else
                zona(4,10)=zona(4,10)+1;
            end
        end
end

%pcolor(zona); colorbar
%shading interp;
