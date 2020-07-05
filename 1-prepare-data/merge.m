features = csvread('features.csv');
labels = csvread('labels.csv');
f = csvread('f.csv');
l = csvread('l.csv');

features = [features; f];
labels = [labels; l];
csvwrite('features.csv', features);
csvwrite('labels.csv', labels);