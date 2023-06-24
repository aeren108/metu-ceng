N=4129; % size of the Monte Carlo simulation with alpha = 0.01 and error = 0.02
lambda_a = 50; % number of automobiles in a day has a Poisson dist. with lambda=50
lambda_t = 10; % number of trucks in a day has a Poisson dist. with lambda=50
TotalWeight=zeros(N,1); % a vector that keeps the total weight of the caught fish for each Monte Carlo run
for k=1:N;
	U = rand; i = 0; % first generate sample Y, the number of automobiles
	F = exp(-lambda_a);
	while (U>=F);
		i=i+1;
		F = F+exp(-lambda_a)*lambda_a^i/gamma(i+1);
	end;
	Y = i; % Y is the number of automobiles
	weight_a = 0; % total weight of fish for this run

	U = rand; i = 0; % generate sample T, the number of trucks
	F = exp(-lambda_t);
	while (U>=F);
		i=i+1;
		F = F+exp(-lambda_t)*lambda_t^i/gamma(i+1);
	end;
	Z = i; % Z is the number of trucks
	weight_t = 0; % total weight of fish for this run
	
	% now sample Y automobile weights
	lambda_wa = 0.15; alpha_wa = 190; 
	lambda_wt = 0.01; alpha_wt = 110; 
	for f=1:Y; 
		W = sum(-1/lambda_wa * log(rand(alpha_wa,1))); % generate weights which has gamma dist.
		weight_a = weight_a + W;	
	end;
	for f=1:Z; 
		W = sum(-1/lambda_wt * log(rand(alpha_wt,1))); % generate weights which has gamma dist.
		weight_t = weight_t + W;	
	end;
	TotalWeight(k) = weight_a + weight_t;
end;
p_est = mean(TotalWeight>200000);
expectedWeight = mean(TotalWeight);
stdWeight = std(TotalWeight);
fprintf('Estimated probability = %f\n',p_est);
fprintf('Expected weight = %f\n',expectedWeight);
fprintf('Standard deviation = %f\n',stdWeight);