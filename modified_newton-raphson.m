%Modified Newton-Raphson
%Zulfikar Ali Ibadurrahman
%12918030

a=input('Masukkan nilai Xn: ');
tol=input('Masukkan nilai toleransi: ');
e=1;
i=0;

while e>=tol
    fa=(0.49*(10^(1/2))*(a^(1/2)))-8;
    faksen=(0.49*(10^(1/2))*(1/2)*(a^-(1/2)));
    faksendua=(0.49*(10^(1/2))*-(1/4)*(a^-(3/2)));
    i=i+1;
    b=a-((fa*faksen)/(faksen^2-(fa*faksendua)));
    e=abs(b-a);
    a=b;
end

disp(['Solusi: ',num2str(b)])
disp(['iterasi: ',num2str(i)])
