function [k] = advance (k, startpit)


% assume player 1
k.again=0;

%number of beads in the startpit
hand=k.pits(startpit);
k.pits(startpit)=0;

%maybe a chack for hand=0

pit=startpit;

for kk=1:hand

  if pit==13 % do not put in player two and start back with one
   pit=0;
  end

  pit=pit+1; % 
  k.pits(pit)=k.pits(pit)+1; %add a bead
  
end

%disp('End seading')
%disp(pit)
%k.pits

% test the different end senaries
if pit==7 % we ended in our own 
  %disp('Another go')
  k.again=1;
  return
end

if k.pits(pit)>1 && pit ~=7  % we ended in one which has beads, and not in our home
    %disp('take and sead again')
     k=advance(k,pit);  % go with the 
     return
 end
  
if k.pits(pit)==1 && pit>0 && pit<7 % we ended in out own land (0 is we landed in last oponent
    %disp('take accros')
    %pit
    nover=6-pit+1+7; % calculate the pit acros
    k.Nnotakeover=k.pits(7); % record number of beads taken this way
    k.pits(7)=k.pits(7)+k.pits(pit)+k.pits(nover);
    k.pits(pit)=0;
    k.pits(nover)=0;
    k.Nwithtakeover=k.pits(7);
    return
 end

 k.Nwithtakeover=k.pits(7);
 k.Nnotakeover=k.pits(7);
 %disp('dead')
 %pit
 
%endfunction
