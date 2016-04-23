function obj = addMenus(~,~, obj )
%ADDMENUS Summary of this function goes here
%   Detailed explanation goes here
%% get figure handle
hFuzzy=findall(0,'tag','mfEditor');

%% Edit
h1 = uimenu(hFuzzy, ...
    'Label','Edit');
uimenu(h1, ...
    'Callback',{@addmfs obj}, ...
    'Label','Add MFs...');

uimenu(h1, ...
    'Callback',{@removeallmfs obj}, ...
    'Label','Remove All MFs');


%% View
h1 = uimenu(hFuzzy, ...
    'Label','View');
uimenu(h1, ...
    'Callback','', ...
    'Label','Rules');
uimenu(h1, ...
    'Callback','helper.viewSurface', ...
    'Label','Surface');



end

