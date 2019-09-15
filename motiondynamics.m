function speed3Q = motiondynamics(inputfile)
fid = fopen(inputfile,'rt');
C = textscan(fid, '%f%f%f%f%f%f%f%f', 'MultipleDelimsAsOne',true, 'Delimiter','[,', 'HeaderLines',2);
fclose(fid);
trajectory = cell2mat(C);
dispwithTime = diff(trajectory(:,1:4));
A = dispwithTime(:,2:4);
B = dispwithTime(:,1);
distance = sqrt(sum(A.^2,2));
speed = distance./B;
speed = speed(~isinf(speed));
speed = speed(~isnan(speed));
speed3Q = quantile(speed,0.75);
end

