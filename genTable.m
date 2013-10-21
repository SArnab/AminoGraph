function [table] = genTable()
% This function performs no real logic, it is used to define the table of
% amino acids used by the function aminoGraph.

table = struct('Name',...
                {'Ala','Arg','Asn','Asp','Cys','Gln','Glu','Gly','His',...
                 'Ile','Leu','Lys','Met','Phe','Pro','Ser','Thr','Trp',...
                 'Tyr','Val'...
                },...
                'Codons',...
                {...
                    {'GCU','GCC','GCA','GCG'}... %Ala
                    {'CGU','CGC','CGA','CGG','AGA','AGG'}... %Arg
                    {'AAU','AAC'}... %Asn
                    {'GAU','GAC'}... %Asp
                    {'UGU','UGC'}... %Cys
                    {'CAA','CAG'}... %Gln
                    {'GAA','GAG'}... %Glu
                    {'GGU','GGC','GGA','GGG'}... %Gly
                    {'CAU','CAC'}... %His
                    {'AUU','AUC','AUA'}... %Ile
                    {'UUA','UUG','CUU','CUC','CUA','CUG'}... %Leu
                    {'AAA','AAG'}... %Lys
                    {'AUG'}... %Met
                    {'UUU','UUC'}... %Phe
                    {'CCU','CCC','CCA','CCG'}... %Pro
                    {'UCU','UCC','UCA','UCG','AGU','AGC'}... %Ser
                    {'ACU','ACC','ACA','ACG'}... %Thr
                    {'UGG'}... %Trp
                    {'UAU','UAC'}... %Tyr
                    {'GUU','GUC','GUA','GUG'}... %Val
                },...
                'Count',{0}...
        );

end

