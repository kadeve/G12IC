function [o,Rms] = neutralize_offset(o,s,Rms,FileName,Fs)

if (o == 0 )
 [o,Rms] = calc_offset(s);
end    
s = s - o;
close all;
plot(s);
fprintf(1,'Offset neutralized\n');
title([FileName '  Nsamples = ' num2str(size(s,1)) '  Fs = ' num2str(Fs) ])
print -r300 -dpng neutralized.png 
pause(10)
end