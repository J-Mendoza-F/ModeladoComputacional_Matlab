a=input('Límite inferior del intervalo de integración: ');
b=input('Límite superior del intervalo de integración: ');
n=input('Número de particiones: ');

h=(b-a)/n;

s1=0;
s2=0;

for i=1:n-1
    X(i)=X(0)+i*h;
    if mod(i,2)==0
        s2=s2+f(X(i));
    else
        s1=s1+f(X(i));
    end
    I=h/3[f(X(0))+4*s1+2*s2+f(X(n))];
end

fprint('La integral es: ', I);