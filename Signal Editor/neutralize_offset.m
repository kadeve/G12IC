function [a,o,Rms] = neutralize_offset(o,s,Rms)

if (o == 0 )
    calc_offset(s);
end    
a = s - o;
close all;
plot(a);
fprintf(1,'Offset neutralized');
pause(10)
end