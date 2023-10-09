%-----Función ode45 que resuslve numericamente el sistema------%
[t,x]=ode45(@CFRO, [0 10], [0 0]);
%Graficamos nuestro sistemas de ecuaciaones
% x y t son parametros que retorna la función que creamos
%Figura 1
figure(1)
plot(t,x(:,1),'R');
grid on
title("Volatej de salida");
xlabel("Tiempo");
ylabel("Voltaje");