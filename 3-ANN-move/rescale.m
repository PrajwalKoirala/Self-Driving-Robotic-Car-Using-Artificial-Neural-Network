function [ scaled ] = rescale( matrix ,ul)
%RESCALE Summary of this function goes here
%   Detailed explanation goes here

scaled = zeros(size(matrix));
minm = zeros(size(matrix)) + min(min(matrix));
maxm = zeros(size(matrix)) + max(max(matrix));
scaled = (matrix - minm) ./ (maxm - minm);
scaled = scaled .* (ul-0.0002) + 0.0001;

end

