function [s]=fade_out(s,Fs,FileName)
sa = round(numel(s)/Fs); %duration of file
sak = sa.*0.2; % %20 of duration
if sa < 5 %if the file is too short
    fade_samples = round(sak.*Fs); % figure out how many samples fade is over
else
    fade_samples = round(5.*Fs); % figure out how many samples fade is over
end
fade_scale = linspace(0,1,fade_samples)'; % create fade

s(end-fade_samples+1:end) = s(end-fade_samples+1:end).*fade_scale(end:-1:1);
close all;
plot(s)
title([FileName '  Nsamples = ' num2str(size(s,1)) '  Fs = ' num2str(Fs) ])
print -r300 -dpng fade-out.png 

end


