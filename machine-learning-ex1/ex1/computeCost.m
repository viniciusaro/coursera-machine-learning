function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

% cost = 0;
% for i=1:m,
% 	hipotesis = 0;
% 	for j=1:length(theta),
% 		hipotesis = hipotesis + X(i, j) * theta(j);
% 	end;
% 	cost = cost + (hipotesis - y(i))*(hipotesis - y(i));
% end;
% 

cost = sum((((X * theta) - y).^2));

J = cost/(2*m);

end
