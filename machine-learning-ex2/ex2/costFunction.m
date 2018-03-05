function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
temp_grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% ====================== FIRST VERSION ======================
% cost = 0;
% for i = 1:size(y),
% 	cost = cost + (-y(i)*log(sigmoid(X(i, :) * theta)) - (1 - y(i))*(log(1 - sigmoid(X(i, :) * theta))));
% end

% for j = 1:size(theta),
% 	partial_grad = 0;
% 	for i = 1:size(y),
% 		partial_grad = partial_grad + ((sigmoid(X(i, :) * theta) - y(i)) * X(i, j));
% 	end
% 	temp_grad(j) = sum(partial_grad)/m;
% end

% ====================== INNER FOR VECTORIZED ======================
% for j = 1:size(theta),
% 	temp_grad(j) = ((sigmoid(X * theta) - y)' * X(:, j))/m;
% end

% ====================== FINAL VERSION :D ======================

J = (-y'*log(sigmoid(X * theta)) - (1 - y')*log(1 - sigmoid(X * theta)))/m;
grad = ((sigmoid(X * theta) - y)' * X)'/m;

% =============================================================

end
