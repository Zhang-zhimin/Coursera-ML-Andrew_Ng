function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
num = 0;
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration
   num = num+1
   theta = theta - (alpha*1/m*sum((X*theta-y).*X))';
   if(iter>1)
       if(J_history(iter-1) == computeCost(X, y, theta))
            break;
       end
   end
   
   J_history(iter) = computeCost(X, y, theta);

end

% %    %===============================================================
%         %通过标量方法计算
% %    %===============================================================
% 
% theta_temp = zeros(2,1);
% temp = zeros(m,1);
% for iter = 1:num_iters
%       
%       for j = 1:2 
%          for i = 1:m
%             temp(i) = (X(i,:)*theta-y(i))*X(i,j);
%          end
%          theta_temp(j) = theta(j)-alpha*(1/m)*sum(temp);
%       end
%       theta = theta_temp;
%     % ====================== YOUR CODE HERE ======================
%     % Instructions: Perform a single gradient step on the parameter vector
%     %               theta. 
%     %
%     % Hint: While debugging, it can be useful to print out the values
%     %       of the cost function (computeCost) and gradient here.
%     %
% 
% 
% 
% 
% 
% 
% 
%     % ============================================================
% 
%     % Save the cost J in every iteration
%     J_history(iter) = computeCost(X, y, theta);
% 
%  end

end
