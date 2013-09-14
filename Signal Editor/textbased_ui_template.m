%% This m-script implements a template for a text based, interactive user interface
clc             % clear the command window

%% clear the workspace and close all figure windows, but only if this is the first call to the user interface
if ~exist('ui_is_running','var')    % does the variable 'ui_is_running' exist?
    clear variables                 % if not, then this the first call: clear the workspace
    close all                       % and close all figure windows, if any
    ui_is_running = 1;              % and create the variable
    s = [];                         % create also an empty array to store the signal
    Fs = [];                        % create the sampling frequency
    FileName = [];                  % create the sampling frequency
    PathName = [];                  % create the sampling frequency
    o = 0;                        % create the sampling frequency
    Rms = 0; 
end

%% create a list of commands (the menu)
commandstr = {...
    '0) exit',...
    '1) open and show new data file',...
    '2) save processed data file',...
    '3) calculate offset and RMS',...
    '4) neutralize offset',...
    '5) fade in',...
    '6) fade out',...
    '7) normalize rms',...
    };

Ncommands = size(commandstr,2);         % the number of commands

%% print the menu in the command window, and wait for input:
fprintf(1,'RUDIMENTARY SIGNAL EDITOR/PROCESSOR - version 0\n\n')
for n=1:Ncommands
    fprintf(1,'%s\n',commandstr{n});
end
command_id = input('\nEnter your command: ');


%% switch to the function associated with the given command
switch command_id
    case 0                                      % just do nothing: then the loop will terminate
    case 1
        [s, Fs, FileName, PathName] = opendat_file; 
        textbased_ui_template                   % loop back to the beginning
    case 2
        savedat_file(s,Fs);                     % write s and Fs to a file
        textbased_ui_template                   % loop back to the beginning
    case 3
        [o,Rms] = calc_offset(s);                        % just an empty placeholder (as yet)
        textbased_ui_template                   % loop back to the beginning
    case 4
        [a,o,Rms] = neutralize_offset(o,s,Rms);                      % just an empty placeholder (as yet)
        textbased_ui_template                   % loop back to the beginning
    case 5
        [s] = fade_in(s,Fs,FileName);                     % just an empty placeholder (as yet)
        textbased_ui_template                   % loop back to the beginning
    case 6
        [s] = fade_out(s,Fs,FileName);                             % just an empty placeholder (as yet)
        textbased_ui_template                    % loop back to the beginning
    case 7
        [Rms,s] = normalize_rms (s,Rms);                             % just an empty placeholder (as yet)
        textbased_ui_template
    otherwise
        fprintf(1,'\ninvalid command');
        pause(5);
end
        
    
    


