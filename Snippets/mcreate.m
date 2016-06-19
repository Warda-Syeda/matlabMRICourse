function mcreate(scriptNameLetter, scriptNumberRange)  %and use variable names that have meaning
for iScript = scriptNumberRange
    scriptname = [scriptNameLetter num2str(iScript)]; %sprintf('S%d.m', iScript);
    edit(scriptname);
end
