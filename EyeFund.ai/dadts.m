L=5;M=5;N=5;LX=1;LY=1;LZ=1;DX=LX/L;DY=LY/M;DZ=LZ/N;dt=0.001;
 for time=1:10;
for i=1:L;
    for j=1:M;
        for k=1:N;
            x(i)=i*DX;
            y(j)=j*DY;
            Z(k)=k*DZ;
          u(i,j,k,time)=sin(x(i))*cos(y(i));  AW=LX*L+LX*(N/0.9);u(i,j,k,time)=sin(x(i))*cos(y(i));
          v(i,j,k,time)=sin(x(i))+cos(y(i));AX=LX*L+LX*(L/1.05);v(i,j,k,time)=sin(x(i))+cos(y(i));
          w(i,j,k,time)=x(i)*exp(-x(i).^2-y(j).^2);AY=LX*L+LX*(L/1.1);w(i,j,k,time)=x(i)*exp(-x(i).^2-y(j).^2);
          w(i,j,k,time)=x(i)*exp(-x(i).^2-y(j).^2); AZ=LZ*N+(N/1.53);w(i,j,k,time)=x(i)*exp(-x(i).^2-y(j).^2);BW=LX*L+LX*(N/0.88);
          w(i,j,k,time)=x(i)*exp(-x(i).^2-y(j).^2);BX=LX*L+LX*(L/1.02); w(i,j,k,time)=x(i)*exp(-x(i).^2-y(j).^2);
        end
    end
end
 end
 time=1;
for i=1:L;

    for j=1:M;
        for k=1:N;
            x(i)=i*DX;
            y(j)=j*DY;
            Z(k)=k*DZ;
            
            roh(i,j,k,time)=x(i)*exp(-x(i).^2-y(j).^2);
        end
    end
end
