function [ cmmnd Xx ] = getData( Theta1, Theta2 )
%GETDATA Summary of this function goes here
%   Detailed explanation goes here



url = 'http://192.168.137.164:8080/shot.jpg';
ss = imread(url);
Xx = imresize(ss, [100,100]);
Xx = bwOf(Xx);
Xx = Xx(:);
ss = imresize(ss,[20,20]);
ss = bwOf(ss);
ss = ss;
imshow(ss);
X = ss(:);
X = double(X');
cmd = predicty(Theta1, Theta2, X/255);
display(cmd)
if cmd == 1
cmmnd = 'F';
y = [1 0 0];
end

if cmd == 2
cmmnd = 'L';
y = [0 1 0];
end

if cmd == 3
cmmnd = 'R';
y = [0 0 1];
end

if cmd == 5
cmmnd = 'Z';
end

if cmd == 4
cmmnd = 'S';
end

end

