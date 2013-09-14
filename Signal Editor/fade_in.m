function [s] = fade_in(s,Fs,FileName)
sa = round(numel(s)/Fs); %duration of file
sak = sa.*0.2; % %20 of duration
if sa < 5 %if the file is too short
    fade_samples = round(sak.*Fs); % figure out how many samples fade is over
else
    fade_samples = round(5.*Fs); % figure out how many samples fade is over
end
fade_scale = linspace(0,1,fade_samples)'; % create fade

s(1:fade_samples) = s(1:fade_samples).*fade_scale; % apply fade
close all;
plot(s)
title([FileName '  Nsamples = ' num2str(size(s,1)) '  Fs = ' num2str(Fs) ])
print -r300 -dpng fade-in.png 
end


