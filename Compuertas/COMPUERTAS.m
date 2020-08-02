%%OR
% (X1,X2) definicion de la entada de la neurona
 Input = [1 1 0 0; 1 0 1 0]
 % Y definicion de la salida
 Target = [1 1 1 0]
 % Graficar los puntos para sabes si es separable o no
 plotpv(Input,Target)
 perceptron=newp([0,1;0,1],1,'hardlim','learnp')
 % Inicializacion del pecepton  
    perceptron = init(perceptron)
% Configuracion de argumentos del perceptron
perceptron.trainparam.epochs=20
perceptron.trainparam.goal=0
% entrenamiento
[perceptron, tr,y,e]=train(perceptron,Input, Target)

%% And
% (X1,X2) definicion de la entada de la neurona
 AInput = [1 1 0 0; 1 0 1 0]
 % Y definicion de la salida
 ATarget = [1 0 0 0]
 % Graficar los puntos para sabes si es separable o no
 plotpv(AInput,ATarget)
 Aperceptron=newp([0,1;0,1],1,'hardlim','learnp')
 % Inicializacion del pecepton  
    Aperceptron = init(Aperceptron)
% Configuracion de argumentos del perceptron
Aperceptron.trainparam.epochs=20
Aperceptron.trainparam.goal=0
% entrenamiento
[Aperceptron, tr,y,e]=train(Aperceptron,AInput, ATarget)

%%NOR
% (X1,X2) definicion de la entada de la neurona
 NOInput = [1 1 0 0; 1 0 1 0]
 % Y definicion de la salida    nor
 NOTarget = [0 0 0 1]
 % Graficar los puntos para sabes si es separable o no
 plotpv(NOInput,NOTarget)
 NOperceptron=newp([0,1;0,1],1,'hardlim','learnp')
 % Inicializacion del pecepton  
    NOperceptron = init(NOperceptron)
% Configuracion de argumentos del perceptron
NOperceptron.trainparam.epochs=20
NOperceptron.trainparam.goal=0
% entrenamiento
[NOperceptron, tr,y,e]=train(NOperceptron,NOInput, NOTarget)


%%NAND
%%% (X1,X2) definicion de la entada de la neurona
 NDInput = [1 1 0 0; 1 0 1 0]
 % Y definicion de la salida   nand
 NDTarget = [0 1 1 1]
 % Graficar los puntos para sabes si es separable o no
 plotpv(NDInput,NDTarget)
 NDperceptron=newp([0,1;0,1],1,'hardlim','learnp')
 % Inicializacion del pecepton  
    NDperceptron = init(NDperceptron)
% Configuracion de argumentos del perceptron
NDperceptron.trainparam.epochs=20
NDperceptron.trainparam.goal=0
% entrenamiento
[NDperceptron, tr,y,e]=train(NDperceptron,NDInput, NDTarget)

% 
% %%NOT
% %%% (X1,X2) definicion de la entada de la neurona
%  NTInput = [1 1 0 0]
%  % Y definicion de la salida   nand
%  NTTarget = [0 0 1 1]
%  % Graficar los puntos para sabes si es separable o no
%  plotpv(NTInput,NTTarget)
%  NTperceptron=newp([0,1;0,1],1,'hardlim','learnp')
%  % Inicializacion del pecepton  
%     NTperceptron = init(NTperceptron)
% % Configuracion de argumentos del perceptron
% NTperceptron.trainparam.epochs=20
% NTperceptron.trainparam.goal=0
% % entrenamiento
% [NTperceptron, tr,y,e]=train(NTperceptron,NTInput, NTTarget)

% tes1=sim(perceptron,[1;0])
 tes2=sim(Aperceptron,[0;0])
% %tes3=sim(NTperceptron,[0;1])
% tes4=sim(NDperceptron,[1;0])
tes5=sim(NOperceptron,[1;0])

%%((X1 AND X2) OR X1)
test1 = sim(perceptron,[tes2;1])


%% ((X1 and X2) OR X1) NAND (X1 NOR X2)
test2 = sim(NDperceptron,[test1;tes5])


