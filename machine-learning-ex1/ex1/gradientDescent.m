function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % theta_temp = theta;
    % for j = 1:length(theta),
    %     delta = 0;
    %     for i = 1:m,
    %         hypothesis = 0;
    %         for j2 = 1:length(theta),
    %             hypothesis = hypothesis + theta(j2) * X(i, j2);
    %         end;
    %         error = hypothesis - y(i);
    %         delta = delta + error * X(i, j);
    %     end;
    %     theta_temp(j) = theta(j) - delta * (alpha / m);
    % end;
    % theta = theta_temp;

    % theta_temp = theta;
    % for j = 1:length(theta),
    %     hypothesis = X * theta;
    %     error = hypothesis - y;
    %     delta = X(:, j)' * error;
    %     theta_temp(j) = theta(j) - delta * (alpha / m);
    % end;
    % theta = theta_temp;

    hypothesis = X * theta;
    error = hypothesis - y;
    delta = X' * error;
    theta = theta - delta * (alpha / m);

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
