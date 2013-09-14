function [Rms,s] = normalize_rms (s,Rms)
if (o == 0 )
    calc_offset(s);
end   
s = (1/Rms) * s;
close all;
plot(s);
fprintf(1,'RMS normalized');
pause(5)
end