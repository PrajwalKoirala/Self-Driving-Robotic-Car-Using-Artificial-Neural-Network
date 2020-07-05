function [cmmnd h2] =  getDir(Theta1, Theta2)




url = 'http://192.168.137.9:8080/shot.jpg';
ss = imread(url);
ss = imresize(ss,[20,20]);
ss = bwOf(ss);
% imshow(ss);
X = ss(:);
X = double(X');
[cmd h2] = predicty(Theta1, Theta2, X/255);
h2 = h2(:,1:6);
h2 = h2 / sum(h2);

if cmd == 1
cmmnd = 'F'
disp('Moving Forward');
end

if cmd == 3
cmmnd = 'R'
disp('Moving Right');
end

if cmd == 2
cmmnd = 'L'
disp('Moving Left');
end

if cmd == 4
cmmnd = 'S'
disp('Obstacle detected');
end

if cmd == 5
cmmnd = 'Z'
disp('Zebra Crossing detected');
end

if cmd == 6
cmmnd = 'SS'
disp('Stop sign detected');
end

end
