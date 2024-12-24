Target1 = Target;
Output = [15 67.8638 25 -31.3178 53.3748 93.1378 30 31.2031 58 75 25 138.1285 63 85 109 33 58 191.5039 114 145 43 75 109 220.0618 183];
s1=0;
s2=0;
for i=1:25
    s1=s1+((Target1(i)-Output(i))^2);
    s2=s2+(Target1(i)^2);
end
s1=s1^(1/2);
d=s1/(s2^(1/2));
answer=d;
disp('Answer is'); disp(answer);