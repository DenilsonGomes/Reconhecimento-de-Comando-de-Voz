% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
% Processamento Digital de Sinais
% Script para gravar comandos de Voz

% Record your voice for 5 seconds.
recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 2);
disp('End of Recording.');

%recObj = audiorecorder(taxaAmostragem, nBits, nCanais);
%get(recObj) %exibe as caracteristicas do audio gravado

% Play back the recording.
play(recObj);

% Store data in double-precision array.
myRecording = getaudiodata(recObj);

% Plot the waveform.
plot(myRecording);