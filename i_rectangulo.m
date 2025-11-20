a=input('Límite inferior del intervalo de integración: ');
b=input('Límite superior del intervalo de integración: ');
n=input('Número de particiones: ');

h=(b-a)/n;
X(0)=a;
X(n)=b;

s=0;

for i=0:n-1
    s=s+f(X(i));
    X(i+1)=X(0)+(i+1)*h;
end
I=h*s;

fprint('La integral es: ', I);