% (X1,X2) definicion de la entada de la neurona
 P = [-0.5 -0.5 0.3 0;
       -0.5 0.5 -0.5 1]
 % Y definicion de la salida
 T = [1 1 0 0]
 % Graficar los puntos para sabes si es separable o no
 plotpv(P,T)
perceptron=newp([-0.5,0;-0.5,1],1,'hardlim','learnp')
 % Inicializacion del pecepton  
    perceptron = init(perceptron)
% Configuracion de argumentos del perceptron
perceptron.trainparam.epochs=20
perceptron.trainparam.goal=0
% entrenamiento
% tr Argumentos
% Salida
% Error
[perceptron, tr,y,e]=train(perceptron,P, T)
% Prueba del perceptron
tes1=sim(perceptron,[1;-1])
% Evaluacion de las entradas
S=sim(perceptron,P)

%% Calculo del eror
mae(S-T)
plotpc(perceptron.IW{1},perceptron.b{1})