function istex = IsTexMode()

  mode = get(0,'DefaultTextInterpreter');

  if strcmp(mode,'tex') || strcmp(mode,'latex')
    istex = true;
  else
    istex = false;
  end
  
