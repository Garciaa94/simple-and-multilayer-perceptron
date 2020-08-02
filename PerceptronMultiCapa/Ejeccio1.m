% Valores de entrada y salida
% Imput
X = [0 0 1 1 ; 0 1 0 1]
%Iutoput
Y = [0 1 0 1]
% creation of the MLP
mlp = newff(minmax(X),[3 1],{'tansig','tansig','tansig','tansig','trainlm'})
% train the backpropagation network
mlp.trainParam.epochs =100;
mlp.trainParam.goal = 0.001;
% Traing the MLP
mlp = train(mlp,X,Y)

xor=sim(mlp,X)

% Pesos
pesos =(mlp.IW{1})

% bias
bias =(mlp.B{1})

