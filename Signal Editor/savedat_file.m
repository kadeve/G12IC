function savedat_file(s,Fs)
%SAVEDAT_FILE save the data file
%   Only wav files are implemented, as yet
% s:  the signal
% Fs: the sampling frequency

[file,path] = uiputfile('*.wav','Save signal As');           % open standard dialog box for saving files
wavwrite(s,Fs,[path file]);


end

