function [Rms,s] = normalize_rms (s,Rms,o,FileName,Fs)
if (o == 0 )
   [o,Rms] = calc_offset(s);
end   
s = (1/Rms) .* s;
close all;
plot(s);
fprintf(1,'RMS normalized\n');
title([FileName '  Nsamples = ' num2str(size(s,1)) '  Fs = ' num2str(Fs) ])
print -r300 -dpng normalized.png 
pause(5)
end