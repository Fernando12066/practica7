%Función del amplificador operacional
function dx=CFRO(t,x)
%-----Definimos nuestro parametros------%
Resistencia1=5e6; %Resistencia 1 (Ohms)
Resistencia2=5e6; %Resistencia 2 (Ohms)
Resistencia3=5e6; %Resistencia 3 (Ohms)
Capacitor1=100e-9; %Capacitor 1 (F)
Capacitor2=100e-9; %Capacitor 2 (F)
voltaje_entrada=1; %Voltaje de entrada (v)
%------Creamos nuestra matriz de las variables de estado----%
dx=zeros(2,1);
%-----Definición dinamica del sistema (Representanción de estados)-----%
dx(1)=x(2);
dx(2)=(1/(Resistencia1*Resistencia2*Resistencia3*Capacitor1*Capacitor2))*(Resistencia2*voltaje_entrada-Resistencia1*Resistencia3*Capacitor2*x(2));
