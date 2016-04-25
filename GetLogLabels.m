function [labels,labellist] = GetLogLabels(fname)

fid = fopen(fname);
tline = fgetl(fid);
tline = tline([2:end]);  % cut the first '%'

[T1,rest] = strtok(tline);
n = 0;
s_org = '';

m = 1;
labellist = cell(0);

while ~isempty(T1)
  labellist{m} = T1;
  m = m+1;

  s = RemoveBrackets(T1);
  if ~strcmp(s,s_org)
    n = n+1;
    labels(n).string = s;
    labels(n).num    = 1;
    s_org = s;
  else
    % array data
    labels(n).num = labels(n).num+1;
  end

  % get the next variable name
  [T1,rest] = strtok(rest);
end

fclose(fid);

%----------------------------------
function result = RemoveBrackets(str)
% Remove brackes, as well as parenthesis
% example:
%   com(X) => com,  com[X] => com

b = findstr(str,'[');
p = findstr(str,'(');
p2 = findstr(str,'{');

if( b ~= 0 )
  result = str([1:b-1]);
elseif( p ~= 0)
  result = str([1:p-1]);
elseif( p2 ~= 0)
  result = str([1:p2-1]);
else
  result = str;
end
