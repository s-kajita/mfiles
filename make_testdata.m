time = 0:0.01:3*pi;
fid = fopen('testdata.log','w');
fprintf(fid,'%% time x y\n')
for n=1:length(time)
	fprintf(fid,'%g %g %g\n',time(n),sin(time(n)),cos(time(n)));
end
fclose(fid);
