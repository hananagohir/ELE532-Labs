
%------------------------------------------  PART A  ------------------------------------------%

%Problem A.1 Figure 1.46
f = @(t) exp(-t).*cos(2*pi*t); % Creating the function
t = [-2,-1,0,1,2]; % Value of t
plot(t, f(t));
xlabel('t');
ylabel('f(t)');
grid; % gives graph grid lines

% Problem A.1 Figure 1.44
f = @(t) exp(-t).*cos(2*pi*t); % Creating the fucntion
t = (-2:0.01:2); % Value of t
plot(t, f(t));
xlabel('t');
ylabel('f(t)');
grid; % gives graph grid lines


%Problem A.2 
t=(-2:2); % Values for t using given
f=@(t) exp(-t); %Create Function
plot(t, f(t));
xlabel('t');
ylabel('f(t)');
grid;


%Problem A.3
% The graphs of both A.2 and 1.46 are identical. This means that the functions 
% used in both graphs are equal to one another. Therefore, the graph for
% A.1 Figure 1.46 and A.2 are the same graph as they both exponentially decrease 
% with three slope changes of the same magnitude at t= -1, t=0 and t=1.



%------------------------------------------  PART B  ------------------------------------------%

%Problem B.1 -----------------------------------------------
t = -2:0.01:2; % Value of t
p = @(t) 1.0*((t>=0) & (t<=1)); %Create Function
plot(t, p(t));
xlabel('t');
ylabel('p(t) = u(t) - u(t-1)');
grid;


%Problem B.2 r(t)------------------------------------------
t = (-2:0.01:2); %Set value for t 
%Create the function
u = @(t) 1.0.*(t>=0);
p = @(t) u(t) - u(t-1);
r = @(t) t.*p(t);
n = @(t) r(t) + r(-t + 2);
plot (t, r(t));
xlabel ('t');
ylabel ('r(t) = t*p(t)');
axis([-1 2 -0.1 1.1]);
grid;

%Problem B.2 n(t) ***
plot (t, n (t));
xlabel ("t") ;
ylabel ("n(t) = r(t) + r(-t+2)");


%Problem B.3 n1(t) &  n2(t) ------------------------------------------------
u = @(t)1.0.*(t>=0);
p = @(t) u(t) - u(t-1);
r = @(t) (t.*p(t));
n = @(t) r(t) + r(-t+2);
n1 = @(t) n(0.5.*t);
n2 = @(t) n1(t+0.5);
t = (-1:0.01:5);
plot (t,n1(t), '-k', t, n2 (t), ':k');
legend('Plot n2');
xlabel('t');
ylabel('n2(t)');
axis([-1 5 -0.1 1.1]);


%Problem B.4 n3(t) & n4(t)---------------------------------------
r = @(t) (t.*p(t));
u = @(t) 1.0.*(t>=0);
p = @(t) u(t) - u(t-1);
r = @(t) (t.*p(t));
n = @(t) r(t) + r(-t+2);
n3 = @(t) n(t + 0.25);
n4 = @(t) n3(0.5.*t);
t = (-1:0.01:5);
plot (t,n3 (t), '-k',t,n4(t),':k');
legend ('Plot n3' ,'Plot n4');
xlabel('t') ;
ylabel ('n3 (t) & n4(t)');
axis([-1 5 -0.1 1.1]);
grid;


%Problem B.5-----------------------------------------------------
% The graphs of n4(t) and n2(t) are identical. this means that the functions used 
% in both graphs are equal to one another. Therefore, n4(t) = n3( 1/2 t) is equivalent 
% to n2(t) = n1(t + 1/2 ).Furthermore, both graphs start with an increasing slope of 
% the same magnitude at (-0.48, 0.01), reach a maximum at (0.74, 0.99) and then have a 
% negative slope of the same magnitude at (1.74, 0.01).



%------------------------------------------  PART C  ------------------------------------------%

%Problem C.1----------------------------------------------
%Create F(t）
f = @(t) exp(-2.*t).*cos(4*pi*t);
t = (-2:0.01:2);
%Create u(t)
u = @(t) 1.0.*(t>=0);
axis ([-2 2 -0.1 1.1]);
%Create g(t)
g = @(t) f(t).*u(t);
t = (-2:0.01:2);
plot(t,g(t));
xlabel('t');
ylabel ('g(t) = f(t)*u(t)') ;
grid;


%Problem C.2-----------------------------------------------
%Create f(t)
f = @(t) exp(-2.*t).*cos(4*pi*t);
t = (-2:0.01:2);
%Create u(t)
u = @(t) 1.0.*(t>=0) ;
axis ([-2 2 -0.1 1.1]);
%Create g(t)
g = @(t) f(t).*u(t);
t = (-2:0.01:2);
%Create s(t)
s = @(t) g(t+1);
t = (0:0.01:4);
plot (t, s(t));
xlabel ('t');
ylabel ('s (t) = g(t+1)');
grid;

%Problem C.3------------------------------------------------
%Create u(t) function
u = @(t) 1.0.*(t>=0);
t = (1:0.01:4);
%Create a matrix of zeros that are 401 by 4 matrix
matrix = zeros(401,4);
for alpha = 1:2:7
%loop and then the function is made
s = @(t)exp(-2).*exp(-alpha.*t).*cos(4*pi*t).*u(t);
%plot function 
plot (t,s(t));
xlabel ('t');
ylabel ('s(t)');
hold on;
end
legend('apha = 1', 'alpha = 3', 'alpha = 5', 'alpha = 7');
hold off;


%Problem C.4-------------------------------------------------
% The size of the matrix s(t) is 401x4 or 1604. This is found from the line 
% matrix = zeros(401,4) which makes a 401 by 4 matrix of zeros.




%------------------------------------------  PART D  ------------------------------------------%

%Problem D.1-----------------------------------------------------

% A)
A(:)

% B)
A([2 4 7])

% C)
[A >= 0.2] 

% D)
A([A >= 0.2])

% E)
A([A >= 0.2]) = 0


%Problem D.2-----------------------------------------------------

% A)
for i = 1:numel(B)
    if B(i) < 1
        B(i) = 0;
    end
end
B(:)

% B)
B(B<0.01) = 0 

% C)
%--------------------------------------
tic;
for i = 1:numel(B)
    if B(i) < 1
        B(i) = 0;
    end
end
B(:)
tok;
%Elapsed time is 0.426868 seconds.
%--------------------------------------
tic;
B(B<0.01) = 0 
tok;
%Elapsed time is 0.196322 seconds. FASTER


%Problem D.3-----------------------------------------------------

compressed_audio = x_audio; % Creates a copy of the original audio data to work on

threshold = 0.01; %Set compression threshold

% if greater than threshold, replace with 0
compressed_audio(abs(compressed_audio) < threshold) = 0;

num_zero = sum(compressed_audio == 0); % Count the number of elements set to zero

sound(compressed_audio, 8000); % Play altered audio

% Display the number of zero samples
disp(['Number of in array that were set to zero: ', num2str(num_zero)]);


