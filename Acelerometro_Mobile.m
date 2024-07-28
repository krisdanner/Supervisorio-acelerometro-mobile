%-----------------------------------------------------------
% Acelerômetro para aparelho celular com MATLAB Mobile
% Autor: Christian Danner Ramos de Carvalho
% ----------------------------------------------------------

% Utilizar no Matlab Mobile (habilitar Stream to Matlab)
% Verifica se o suporte a sensores está disponível
% obs: ligue o sensor de aceleração e clique no botão start

% Cria um objeto mobiledev
% m = mobiledev('Xiaomi - Redmi Note 9S(541a)');

if (m.AccelerationSensorEnabled) == 1
    % Habilita acesso aos sensores do dispositivo
    % Define o tempo de amostragem
    dt = 0.5; % em segundos
    % Define o tempo de aquisição
    T = 10; % em segundos
    % Inicia a aquisição de dados
    tic;
    while toc < T
        % Armazena a leitura dos sensores
        acc = m.Acceleration;
        % Exibe os dados adquiridos
        disp(acc);
        % Aguarda o tempo de amostragem
        pause(dt);
    end
    % Desabilita o acesso aos sensores do dispositivo
else
    disp('Sensor de aceleração desligado.');
end

% figure
% pp = poseplot("MeshFileName", "phoneMesh.stl");
% 
% for i = 1:numel(qEst)
%     set(pp, "Orientation", qEst(i));
%     drawnow
% end