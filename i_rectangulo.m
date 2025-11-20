function i_rectangulo()

a=input('Límite inferior del intervalo de integración: ');
b=input('Límite superior del intervalo de integración: ');
n=input('Número de particiones: ');

h=(b-a)/n;

X=zeros(1,n+1);
X(1)=a;
X(n+1)=b;

f=@(x)x.^2;

s=0;

for i=0:n-1
    s=s+f(X(i+1));
    X(i+2)=X(1)+(i+1)*h;
end
I=h*s;

fprintf('La integral es: ', I);