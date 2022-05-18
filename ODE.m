close; clear; clc;
%% Solving the function of interest using numerical approximations
%% Example 1
% F(t,y) = y'; (dy/dt) = 2y;   y(0) = 10;  0 <= t <=3; F(Anonymous function)

F = @(t,y) 2*y;% F'  

t0 = 0; tfinal = 3; y0 = 10; h = 1; %Initial condition, range, step size

yout = ODE3(F,t0,h,tfinal,y0); % Call solver

%% Example 2
% y' + 2y = 2 - e^-4t, y(0) = 1, h= 0.1; 0.1 <= t <= 0.5

F = @(t,y)-2*y + 2 - exp(-4*t); % F'  

t0 = 0; tfinal = 0.5; y0 = 1; h = 0.1; %Initial condition, range, step size

yout = ODE3(F,t0,h,tfinal,y0); % Call solver

t = t0:h:tfinal; t = t';  % Store t in a variable

% Plot the resul
plot(t,yout)
xlabel("t")
ylabel("y(t)")