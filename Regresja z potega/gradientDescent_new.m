function [theta, J_history] = gradientDescent_new(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    theta1(1)=theta(1)-alpha/m*sum((theta(1)+theta(2)*X.^theta(3)-y));
    theta1(2)=theta(2)-alpha/m*sum((theta(1)+theta(2)*X.^theta(3)-y).*(X.^theta(3)));
    theta1(3)=theta(3)-alpha/m*sum((theta(1)+theta(2)*X.^theta(3)-y).*(theta(2)*X.^theta(3).*log(X)));
    theta=theta1';
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost_new(X, y, theta);

end

end
