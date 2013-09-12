function [s,Fs] = opendat_file
%OPENDAT_FILE open een data file with a signal and plot it
%   This function open data files
%   s:  array with the signal
%   Fs: sample frequency (Hz)
%   For the moment only wav-files (sound) is supported
%   Stereo wav files are converted to mono

[FileName,PathName] = uigetfile('*.wav','Select the wav file');     % open standard dialog box for retrieving files
[s,Fs] = wavread([PathName FileName]);                              % open the wav file
if size(s,2)~=1                                                     % if stereo, turn it into mono
    s = mean(s,2);
end
figure(1);
plot(s);                                                            % plot the signal
title([FileName '  Nsamples = ' num2str(size(s,1)) '  Fs = ' num2str(Fs) ])
                                                                    % and add some info at the title
end
