function [o,Rms] = calc_offset(s)

o = mean(s);
Rms = rms(s);
close all
fprintf(1,'The offset is %f\n',o);
fprintf(1,'The RMS is %f\n',Rms);
pause(5)
plot(s);
end