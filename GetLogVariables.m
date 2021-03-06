%% Substitute data into the variables shown in the first comment line of the log data

if ~exist('data_name')
  data_name = input('log file name: ','s');
end
if exist(data_name,'file')
  labels = GetLogLabels(data_name);
else
  fprintf('ERROR: %s does not exist\n',data_name);
  clear data_name
  return;
end

fprintf('VARIABLES: ');
for n=1:length(labels)
  if labels(n).num == 1
    fprintf('%s ',labels(n).string);
  else
    fprintf('%s[%d] ',labels(n).string,labels(n).num);
  end
end
fprintf('\n');

data = load(data_name);

col = 1;
for n=1:length(labels)
  next_col = col + labels(n).num;

  if labels(n).num == 1
    eval( [labels(n).string,'=data(:,', num2str(col),  ');'] );   % eg. time
  elseif labels(n).num > 1
    eval( [labels(n).string,'=data(:,', num2str(col),':', num2str(next_col-1), ');'] );  % eg. com[1] com[2]
  else
    fprintf('Error: string= %s, num = %d\n',labels(n).string,labels(n).num); 
  end
  col = next_col;
end 
clear n col next_col

%tsize = length(time);
ToDeg = 180/pi;
