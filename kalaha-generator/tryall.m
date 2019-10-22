function tryall (k)
global res
k0=k;
for kk=find(k.pits(1:6)~=0)
  k=k0;
  k.seq=[k.seq kk];
%  disp(k.seq)
  k=advance(k,kk);
  if k.again==1
    tryall(k);
  else
    %res.seq{length(res.seq)+1}=k.seq;
    %res.Nbeads(length(res.Nbeads)+1)=k.pits(7);
    %res.end{length(res.end)+1}=k.pits;
    %%k.seq=k.seq(1:(end-1)); 
    %str=[ ';'  ';'  '\n'];
    fprintf(res.file,'%s \t %s \t %s \t %s \n',num2str(k.Nwithtakeover),num2str(k.Nnotakeover),num2str(length(k.seq)),num2str(k.seq) );
    res.N=res.N+1;
    if res.N==res.Nmax;
      fclose(res.file);
      system(['gzip ' res.filename])
      res.N=1;
      res.Nfile=res.Nfile+1;
      res.filename=[res.base num2str(res.Nfile) '.txt'];
      res.file=fopen(res.filename,'w')
   end
  end
end
%endfunction
