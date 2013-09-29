function [s,wx] = recti(s,y)
s = abs(s); % |s|  recitified signal
i1 = round(numel(s)); % count samples
wx = linspace(0,0,90); %define variable and start with zero values

for i=91:i1 % 60ms
 ws = (mean(s((i-90):(i)).^2))^0.5; % moving rms
 wx = [wx,ws]; 
end

[b,a]=butter(2,100/1000,'low'); %smoothing output with applying a secondary digital filter
wx=filtfilt(b,a,wx);
plot(wx(510:620),y(510:620));

title('ECG'); %added title
xlabel('Voltage [mV]');
ylabel('Lip Movement [mm]');
print -r300 -dpng rectifygraph.png %creating output image as png
end

