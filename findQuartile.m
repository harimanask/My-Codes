testfiledir = 'C:\Users\rkkaruman\GTFiles\';
filenames = dir(fullfile(testfiledir, '*.txt'));
Vel3Q = zeros(1,numel(filenames));
for k =1:numel(filenames)
    inputfile = filenames(k).name;
    Vel3Q(k)= motiondynamics(inputfile);
end
