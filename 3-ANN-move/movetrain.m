Theta1 = csvread("param1.csv");
Theta2 = csvread("param2.csv");
i =0;

features = zeros(100, 10000);
while(i<300)
[cmmnd Xx] = getData(Theta1, Theta2);
fwrite(bt, cmmnd);
features(i+1,:) = Xx';
i = i+1;
end

csvwrite('features.csv', features);