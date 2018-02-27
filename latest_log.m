% latest_log.m
if is_octave
    data_name = GetLatestLogPath('../log/');
else
    data_name = GetLatestLogPath('./');
end
GetLogVariables
