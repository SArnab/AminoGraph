function [rnaString] = geneSplit( rnaString )
% geneSplit is used by aminoGraph to identify and extract a single sequence
% of translatable RNA. In protein translation, reading start from the FIRST
% 3-letter sequence of "AUG". From that point on, the string is split up
% codons of length 3 characters each. Translation stops at a termination
% codon -or- at the end of the sequence. 
%
% How the function works
% =========================================================================
% First the function uses strfind to get the index of the first 'AUG'.
% Second, using the index, we cut off all prior sequence as it is useless
% to us.
% Third, we use a regular expression to locate all the possible terminate
% sequences. However, this isn't the end. We only need one termination
% sequence, and that will be the FIRST sequence that also happens to be a
% codon (Essentially, a multiple of 3).
% To complete this, we then loop through all the possible termination
% conditions and find the first one to meet the conditions. If none meet
% the criteria, then the translation will continue to the end of the
% sequence.


% Find all start codons (AUG)
rnaString = rnaString(strfind(rnaString,'AUG'):end);

% All Possible Stop Points
stop = regexp(rnaString,'(UAA)?(UGA)?(UAG)?');

% Loop through possible stop points
for ind=1:length(stop)
    endPoint = stop(ind); % This is the endPoint
    
    % Check to see if this termination sequence is a possible codon
    div = mod((endPoint + 2)/3,1);
    
    if(div == 0)
        rnaString = rnaString(1:endPoint+2);
        break;
    end
end