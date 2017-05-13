beta0=12;
beta1=4;
beta2=1;
X=[1:1:1000]';
m = length(X);
y=beta0+beta1*X.^beta2+5*(rand(length(X),1)-0.5);
plot(X,y,'.');
X = [ones(m, 1), X]; % Add a column of ones to x
computeCost(X, y, [beta0,beta1,beta2])
m = length(y);
theta = [beta0,beta1,beta2]';%ones(3, 1);
iterations = 1500;
alpha = 0.000001;
J = computeCost(X, y, theta)
[theta, J_history] = gradientDescent(X, y, theta, alpha, iterations);
theta
J_history(1:100)