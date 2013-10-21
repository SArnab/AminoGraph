function [codons] = aminoGraph(filename)
% Amino Acid Bar Graph
% ======================================
% This function will read a sequence of RNA and provide a bar graph of the
% amount of times a certain amino acid is created. Translation starts at
% the first AUG codon and then stops at the corresponding termination codon
% or the end of the file. Filename.
%
% @filename should be either a path to a file or the name of a file in the
% local directory.

% Load the file and save the sequence into a variable.
rnaString = loadSequence(filename);

% Find the protein region marked by the start and stop codons.
% If no start codon is found, then quit and provide an error message.
rnaString = geneSplit(rnaString);
if(isempty(rnaString))
    disp('There was no start codon found in the sequence.');
    return;
end

% Use regex to split up the sequence into codons (3 nucleotides each).
codons = regexp(rnaString,'\w{3}','match')

% Get the table of amino acids and their codons
table = genTable();

% How many amino acids are we matching up?
total = length(table);

for index=1:total
    % Get amino acid count based on codons
    table(index).Count = sum(ismember(codons,table(index).Codons));
end

plotGraph(cell2mat({table.Count}),{table.Name},'Amino Acids','Number of Occurences');
end