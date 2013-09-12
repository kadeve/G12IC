function [s] = fade_in(s,Fs,FileName)

fade_samples = round(5.*Fs); % figure out how many samples fade is over
fade_scale = linspace(0,1,fade_samples)'; % create fade

s(1:fade_samples) = s(1:fade_samples).*fade_scale; % apply fade
close all;
plot(s)
title([FileName '  Nsamples = ' num2str(size(s,1)) '  Fs = ' num2str(Fs) ])
end


