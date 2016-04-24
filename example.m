clear ; close all; clc

addpath('~/octave/OctaveQuandlInterface');
% https://www.quandl.com/account/api
% API Key
token = 'OBVIOUSLYUSEYOURTOKEN';
Quandl.auth =  token;
%This is a an example you can use of course yours
data = getQuandl('YAHOO/MC_SAN', token, 'cellstr');

% data.headers to see the headers
%ans = {
%  [1,1] = Open
%  [2,1] = High
%  [3,1] = Low
%  [4,1] = Close
%  [5,1] = Volume
%  [6,1] = Adjusted Close
%}
averageVolume = mean(data.data(:,5));

standardDeviation = std(data.data(:,5));

fprintf('Average: %d .\n\n', averageVolume);

fprintf('Standard Deviation: %d .\n\n', standardDeviation);
