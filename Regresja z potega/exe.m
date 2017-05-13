theta0=3;
theta1=2;
theta2=1;
X=[1:1:1000]';
m = length(X);
X=[1:1:1000]';
y=theta0+theta1*X.^theta2+5*(rand(length(X),1)-0.5);
X=(X)/std(X);
m = length(X);
plot(X,y,'.')
theta=[theta0 theta1 theta2]';
computeCost_new(X, y, theta)
iterations = 30000;
alpha = 0.0001;
theta=ones(3,1);
[theta, J_history] = gradientDescent_new(X, y, theta, alpha, iterations);
theta
J_history;