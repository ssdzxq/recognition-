N = 512; % number of samples
T = 20; % meaning??
K = 120; % used to represent a sample

x = zeros(N,1);
q = randperm(N); 
x(q(1:T)) = sign(randn(T,1)); % ����һ����׼�� ��ָ��Ľ�����Աȣ���
disp('Creating measurment matrix...');
A = randn(K,N); % A is a matrix of training samples, a sample is K-dim
                % can be considered as K characteristics of the sample
A = orth(A')';
disp('Done');

y = A*x;

x0 = A'*y;

tic
xp = l1eq_pd(x0, A, [], y, 1e-3);
toc

% ���õ���xp����Чֵ��������õ�x��Чֵһ��