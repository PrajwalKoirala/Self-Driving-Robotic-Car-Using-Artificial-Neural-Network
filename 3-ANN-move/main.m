%bt = Bluetooth('HC-05',1)
%fopen(bt);
Theta1 = csvread("param1.csv");
Theta2 = csvread("param2.csv");
i =0;
ahilesamma = [];
history = [];
while(i<250)
cmmnd = getDir(Theta1, Theta2);
cmd = cmmnd;
if cmmnd == 'SS'
    cmmnd = 'S';
end
 
fwrite(bt, cmmnd);
i = i+1;
ahilesamma(i,:) = cmd;
csvwrite('C:\Users\User\Desktop\mechtrix\abcd\ahilesamma.csv', ahilesamma);
end
