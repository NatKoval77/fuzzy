% y = x1^2 + x2^2 + 7*x1*x2 в области x1[-2,2], x2[-2,2]
n=5; %кол-во значений х
x1=1:1:5; %задаем от 1 до 5 диапазон с шагом 1
x2=1:1:5;
y=zeros(n,n); %матрица 0 5х5
s=0; %счетчик
Input=zeros(2,25); %2 строки 0 - 25 элементов
Target=zeros(1,25); %1 строка 0 - 25 элементов
for j=1:n
    for i=1:n % в задании функции апроксимации используем "-3" для области [-2 2]
        y(j,i)=(x1(j)-3)^2 + (x2(i)-3)^2 + 7*x1(j)*x2(i); % функция для апроксимации
        s=s+1;
        Input(1,s)=x1(j)-3;
        Input(2,s)=x2(i)-3;
        Target(1,s)=(x1(j)-3)^2 + (x2(i)-3)^2 + 7*x1(j)*x2(i);
    end
end
surf(x1,x2,y);
xlabel('x1');
ylabel('x2');
zlabel('y');
title('Target');
