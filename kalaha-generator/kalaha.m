
% setup the game board
%k.pits=[6 6 6 6 6 6 0  6 6 6 6 6 6 0]
%k.pits=[6 6 6 6 6 6 0  6 6 6 6 6 6 0];
k.pits=[6 6 6 6 6 6 0  6 6 6 6 6 6 0];
k.seq=[];
k.takeover=[];

global res
%res.seq=[];
%res.Nbeads=[];
%res.end=[];

res.base='seqs';
res.N=1;
res.Nmax=1000000;
res.Nfile=1;
res.filename=[res.base num2str(res.Nfile) '.txt'];
res.file=fopen(res.filename,'w');


tryall(k);

fclose(res.file)