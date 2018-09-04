function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


h = X * theta;
size = size(theta, 1);

J = (sum((h-y).^2)/(2*m)) + ( (lambda/(2*m)) * sum(theta(2:size,:).^2 ) );

adder = (lambda *  theta(2:size,:));
adder2 = [0 ; adder]; % to seperate theta(1)

grad = ( X'* (h-y) + adder2)/m;

% =========================================================================

grad = grad(:);

end
