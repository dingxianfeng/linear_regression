function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters


	H = X * theta;
	T = [0 ; 0];
	for i = 1 : m,
		T = T + (H(i) - y(i)) * X(i,:)';	
	end
	
	theta = theta - (alpha * T) / m;
	
  
    J_history(iter) = computeCost(X, y, theta);

end

end
