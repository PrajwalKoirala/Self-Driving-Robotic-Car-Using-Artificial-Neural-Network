function [ c ] = backquery( a )
%BACKQUERY Summary of this function goes here
%   Detailed explanation goes here

theta1 = csvread('param1.csv');
theta2 = csvread('param2.csv');

a = a - min(min(a));
a = a/ max(max(a)) * 0.99 +0.001;
a = logit(a) - (theta2(:,1))';
b = a * theta2;
b = b - min(min(b));
b = b / max(max(b)) * 0.99 +0.001;
b = logit(b);
b = b(:,2:151) - (theta1(:,1))';
c = b * theta1;
c = c - min(min(c));
c = c/max(max(c)) * 0.99 + 0.001 ;
c = logit(c);
c = c/max(max(c));
c = c(:,2:401);
c = reshape(c, [20,20]);
c = 19*c -0.5;

end

