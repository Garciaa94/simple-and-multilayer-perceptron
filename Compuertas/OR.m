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
% Prueba del perceptron
tes1=sim(perceptron,[1;0])
tes2=sim(perceptron,[0;0])
tes3=sim(perceptron,[0;1])
tes4=sim(perceptron,[1;0])
% Evaluacion de las entradas
S=sim(perceptron,Input)
%(1 or 0) or (1 or 0)
tes1=sim(perceptron,[sim(perceptron,[1;0]);sim(perceptron,[1;1])])