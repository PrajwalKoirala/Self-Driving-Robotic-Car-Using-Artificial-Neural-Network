function [ desig ] = logit( num )
%DESIGMOD Summary of this function goes here
%   Detailed explanation goes here

one = ones(size(num));
desig = zeros(size(num));

desig = log(num ./(one - num));

end

