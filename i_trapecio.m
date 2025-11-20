function i_trapecio()

a=input('Límite inferior del intervalo de integración: ');
b=input('Límite superior del intervalo de integración: ');
n=input('Número de particiones: ');

h=(b-a)/n;
f=@(x)x.^2;

X=zeros(1,n+1);
s=0;

for i=1:n-1
    s=s+f(X(i+1));
    X(i+1)=X(i)+h;
end

I=h/2[f(X(1))+2*s+f(X(n+1))];

fprintf('La integral es: %f\n', I);