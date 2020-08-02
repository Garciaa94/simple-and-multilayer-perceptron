
%% Perceptrón que aprende mínimo y máximo
%%
%%
% Valores de entrada
X1 = [1 1 1 1 0 0 0]' % máx 
X2 = [1 1 1 0 0 0 0]' % mín 
X3 = [1 0 1 1 0 0 0]' % mín
X4 = [0 1 0 0 1 0 0]' % mín
X5 = [0 0 0 1 1 1 1]' % máx
X6 = [0 1 1 0 0 1 1]' % máx
X7 = [0 1 1 0 0 1 1]' % máx


input = [X1,X2,X3,X4,X5,X6,X7]
target = [1 0 0 0 1 1 0] % Valores de salida deseada

ps_minmax = newp(minmax(input),1); % Nuevo perceptrón
[ps_minmax,tr,y,e] = train(ps_minmax,input,target) % Entrenamiento

% TESTING
a = sim(ps_minmax,input)

% Valores para testing
tes1=[1 1 0 1 0 1 1]' % máx --> 1
tes2=[1 0 1 0 1 0 0]' % mín --> 0
tes3=[0 0 1 0 1 1 1]' % máx --> 1
tes4=[0 1 0 0 1 0 0]' % mín --> 0

% Testing grupal
test = [tes1,tes2,tes3,tes4] % 1 0 1 -- > máx mín máx mín
b = sim(ps_minmax,test)

% Testing individual
 ts1 = sim(ps_minmax,tes1) % 1
 ts2 = sim(ps_minmax,tes2) % 0
 ts3 = sim(ps_minmax,tes3) % 1
 ts4 = sim(ps_minmax,tes4) % 1
%%
 