function [s]=fade_out(s,Fs,FileName)

fade_samples = round(5.*Fs); % figure out how many samples fade is over
fade_scale = linspace(0,1,fade_samples)'; % create fade

s(end-fade_samples+1:end) = s(end-fade_samples+1:end).*fade_scale(end:-1:1);
close all;
plot(s)
title([FileName '  Nsamples = ' num2str(size(s,1)) '  Fs = ' num2str(Fs) ])
end


