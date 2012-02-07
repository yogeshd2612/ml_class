function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

%%%for loop implementation
%for i=1:K,
%		acc=zeros(1,n);
%		total=0
%		for j=1:m,
%			if idx(j)==i,
%				acc=acc+X(j,:);
%				total=total+1;
%			end;
%		end;
%		centroids(i,:)=acc/total;
%end;

%%% vectorized implementation
%changing dimension of idx from m*1 to m*n in tidx
tidx=zeros(size(idx,1),n);

for i=1:n,
	tidx(:,i)=idx;
end;

temp=zeros(size(tidx));

for i=1:K,
		temp=(tidx-i)==0;
		centroids(i,:)=sum(X.*temp)/sum(temp)(1);		
end;


% =============================================================


end

