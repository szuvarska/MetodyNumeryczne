function [output] = S(f,a,b,c,d,N,M)
% Funkcja stosuje złożoną kwadraturę prostokątów z punktem środkowym
% na funkcji f
% f - funkcja
% a,b - granice całkowania po pierwszej współrzędnej
% c,d - granice całkowania po drugiej współrzędnej
% N - liczba kroków
% output - wyliczona wartość za pomocą kwadratury

% Długość podprzedziału
H1 = (b-a)/N;
H2 = (d-c)/M;

% Macierz z wartościami funkcji f
for i=1:N
    for j=1:M
        A(i,j) = f((i-0.5)*H1,(j-0.5)*H2);
    end
end

% Suma wartości pomnożona przez współczynnik H1*H2
output = H1.*H2.*sum(A,'all')

end