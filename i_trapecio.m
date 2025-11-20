a=input('Límite inferior del intervalo de integración: ');
b=input('Límite superior del intervalo de integración: ');
n=input('Número de particiones: ');

h=(b-a)/n;

s=0;

for i=1:n-1
    s=s+f(X(i));
    X(i+1)=X(i)+h;
end

I=h/2[f(X(0))+2*s+f(X(n))];

fprint('La integral es: ', I);