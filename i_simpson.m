function i_simpson()

a=input('Límite inferior del intervalo de integración: ');
b=input('Límite superior del intervalo de integración: ');
n=input('Número de particiones: ');

h=(b-a)/n;

X=zeros(1,n+1);
X(1)=a;
f=@(x)x.^2;

s1=0;
s2=0;

for i=1:n-1
    X(i+1)=X(1)+i*h;
    if mod(i,2)==0
        s2=s2+f(X(i+1));
    else
        s1=s1+f(X(i+1));
    end
end
X(n+1)=b;
I=h/3*(f(X(1))+4*s1+2*s2+f(X(n+1)));
fprintf('La integral es: %f\n', I);