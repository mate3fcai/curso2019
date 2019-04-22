% Matematica 3 - Año 2019
% 
%

clear all
close all

a = -10;  %Limite inferior dominio a observar
b = 10; %Limite superior dominio a observar
c = 100; %Cantidad de divisiones del dominio.

% Meshgrid tiene los valores en el rango deseado a representar, es decir,
% los pares (x,y). Va de -10 a 10, dividido en 1000 partes. 
[x,y] = meshgrid(linspace(a,b,c)); 

% La funcion se define en z. Los exponentes siempre se ponen como .^, ya
% que multiplica a cada elemento de la matriz.
z = sqrt(x.^2 + y.^2);

% Trazas
%Traza yz
y1 = linspace(a,b,c);
x1 = zeros(1,c);
t1 = sqrt(y1.^2);

%Traza xz
x2 = linspace(a,b,c);
y2 = zeros(1,c);
t2 = sqrt(x2.^2);

%Traza xy
%Le damos de nombre t3 a y:
z3 = zeros(1,50);
t3 = sqrt(-3 - x.^2);

% Interseccion



% Grafico en 3d
figure(1); clf
hold on
surf(x,y,z,'FaceColor','green','EdgeColor','none'); %% Grafica la funcion
plot3(x1,y1,t1,'-k','linewidth',3)
plot3(x2,y2,t2,'-k','linewidth',3)
hold off
xlabel('Eje x')
ylabel('Eje y')
zlabel('Eje z')
xlim([a b]) % Limites eje x
ylim([a b]) % Limites eje y
zlim([a b]) %limite eje z
grid on
view(3); camlight; axis vis3d
