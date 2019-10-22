

%% load data
aa=1;
for aa=1:8
base='seqs';
filename=[base num2str(aa) '.txt'];


[NWto, NNto,Steps, seq] = textread(filename,'%n%n%n%s%*[^\n]','delimiter',',');

% Analyze with take ower
%find max found
res(aa).NmaxWto=max(NWto)
kk=find(NWto==max(NWto))
%find the shortest
res(aa).iMaxShortestWto=kk(find(Steps(kk)==min(Steps(kk))))
res(aa).MaxShortestWto=seq(res(aa).iMaxShortestWto)

% find all wining strategies
kk=find(NWto>36);
res(aa).MinWinStepsWto = min(Steps(kk))
res(aa).iWinShortestWto=kk(find(Steps(kk)==min(Steps(kk))))
res(aa).WinShortestWto=seq(res(aa).iWinShortestWto)

% Analyze with out take ower
%find max found
res(aa).NmaxNto=max(NNto)
kk=find(NNto==max(NNto))

%find the shortest
res(aa).iMaxShortestNto=kk(find(Steps(kk)==min(Steps(kk))))
res(aa).MaxShortestNto=seq(res(aa).iMaxShortestNto)
%
% find all wining strategies
kk=find(NNto>36);
res(aa).MinWinStepsNto=min(Steps(kk))
res(aa).iWinShortestNto=kk(find(Steps(kk)==min(Steps(kk))))
res(aa).WinShortestNto=seq(res(aa).iWinShortestNto)
end