function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
%best=0;
%values=[0.01;0.03;0.1;0.3;1;3;10;30];
%eff_mat=zeros(size(values,1),size(values,1));
%for i=1:size(values,1),
%	for j=1:size(values,1),
%		model= svmTrain(X, y, values(i), @(x1, x2) gaussianKernel(x1, x2, values(j)));
%		pred=svmPredict(model,Xval);		
%		efficency=sum(pred==yval)/size(yval,1)
%		eff_mat(i,j)=efficency;
%		if efficency>best,
%			best=efficency;
%			C=values(i);
%			sigma=values(j);
%		end;
%	end;
%end;
%eff_mat
%x1=zeros(size(values,1),size(values,1));
%x2=zeros(size(values,1),size(values,1));
%for i=1:size(values,1),
%	for j=1:size(values,1),
%		x1(i,j)=i;
%	end;
%end;
%for i=1:size(values,1),
%	for j=1:size(values,1),
%		x1(i,j)=j;
%	end;
%end;
%save ematrix eff_mat
%surf(x1,x2,eff_mat);
%best
%C
%sigma
C=1
sigma=0.1
% =========================================================================

end
