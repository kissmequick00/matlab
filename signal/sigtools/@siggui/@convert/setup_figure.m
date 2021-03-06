function setup_figure(this)
%SETUP_FIGURE Setup the figure for the Convert Dialog

%   Author(s): J. Schickler
%   Copyright 1988-2004 The MathWorks, Inc.
%   $Revision: 1.4.4.2 $  $Date: 2004/12/26 22:20:52 $

% This can be a private method

cbs = dialog_cbs(this);
sz  = gui_sizes(this);

hFig = figure('Visible',this.Visible, ...
    'CloseRequestFcn',cbs.cancel, ...
    'WindowStyle',this.WindowStyle, ...
    'Menubar','None', ...
    'position', [600 500 240 200]*sz.pixf, ...
    'Color', get(0,'defaultuicontrolbackgroundcolor'), ...
    'IntegerHandle','Off', ...
    'NumberTitle','Off', ...
    'HandleVisibility','Callback', ...
    'Name','Convert Structure');

set(this, 'FigureHandle', hFig);

% [EOF]
