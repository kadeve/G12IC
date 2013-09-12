function [Rms,s] = normalize_rms (s,Rms)
 
s = (1/Rms) * s;
close all;
plot(s);
fprintf(1,'RMS normalized');
pause(5)
end