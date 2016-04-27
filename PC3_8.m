clc
clear all

%%%%%%%%%%%%%%%%%% 3.8 %%%%%%%%%%%%%%%%%
contador = 0;

for k=0:100
    A = [0 1 0; 0 0 1; -2 -k -2]
    B = [0; 0; 1]
    C = [1 0 0]
    D = 0
    
    av = eig(A);
    AVreal = real(av)

    if AVreal <0
        contador = contador+1;
        faixak(contador) = k;
    end
end