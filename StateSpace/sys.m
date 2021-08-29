%% Declaração da função que retorna o resultado do espaço de estados, dado certa entrada, na representação em matrizes.

%no caso estamos recebendo (t,x) pois usaremos uma function handle do
%matlab e precisamos dessa variável t representando o tempo.

% essa funcao vai retornar a representacao em matriz do espaco de estado
% para o sistema massa-mola-amortecedor da imagem anexada na pasta.
function  dx = sys(t, x)
    k1 = 150; % N/m
    k2 = 700;    % N/m
    b1 = 15;    % N.s/m
    b2 = 30;    % N.s/m
    M1 = 5;    % Kg
    M2 = 20;    % Kg
    
    A = [0 0 1 0; 0 0 0 1; (-k1/M1) k1/M1 (-b1/M1) b1/M1; k1/M2 (-(k1+k2)/M2) b1/M2 (-(b1+b2)/M2)];
    B = [0;0;1/M1;0]; 
    u = 0;
 
    dx = A*x + B*u;
end
