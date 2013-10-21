function [rnaString] = loadSequence(filename)
% loadSequence is used by aminoGraph to read a string of RNA from a
% specified file. Since we need a single line of text, the function also
% runs through the file and concatenates numerous lines together to create
% one single sequence.

fileHandle = fopen(filename,'r');
rnaString = [];
while(true)
    line = fgetl(fileHandle);
    if(line == -1)
        fclose('all');
        break;
    end
    rnaString{end+1} = line;
end
rnaString = [rnaString{1:end}];

end

