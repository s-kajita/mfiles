function data_name = GetLatestLogPath(logpath)
% logpath  : Path to the log directory
% data_name: Path to the latest log data file 

LATEST_LOG = 'latest_log.txt';
fid = fopen([logpath,LATEST_LOG]);
data_name_base = fgetl(fid);
fclose(fid);

DirList = dir([logpath,data_name_base,'*.log']);

data_name = [];

if length(DirList) == 0
  fprintf('No log data exist\n');
else
  fprintf('Found %d log files.\n',length(DirList) );
  data_name = [logpath,DirList(1).name];
  fprintf('%s \n',data_name);
end
  
