function scriptname = GetScriptName()

[StackTrace, WSindex] = dbstack();
scriptname = StackTrace(end).name;

if IsTexMode()
  scriptname = TexProtect(scriptname);
end
