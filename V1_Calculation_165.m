%%%%%%%%
%Knowns%
%%%%%%%%
m = 575000;      % [GIVEN] Airbus mass (kg)
T = 974400;      % [GIVEN] Thrust during takeoff (N)

RF = 0.02;      % [GIVEN] Normal coefficient of rolling friction (Unitless)
RFB = 0.068;    % [GIVEN] coefficient of rolling friction while braking (Unitless)
LoR = 3618;     % [GIVEN] Length of Runway at KSFO (m)

g = 9.81;        % [KNOWN] Gravitational Acceleration (m/s^2)

%%%%%%%%%%%%%%
%Calculations%
%%%%%%%%%%%%%%

L = 2763625.24;  % [CALCULATED ON PAPER] Lift-takeoff (N)
D = 156472.39;   % [CALCULATED ON PAPER] Drag-takeoff (N)
D_l = 80275.39;  % [CALCULATED ON PAPER] Drag-landing (N)
D_lz = 143774.52;% [CALCULATED ON PAPER] Drag during landing w/ zero fuel (N)
VT = 87.51       % [CALCULATED ON PAPER] Takeoff speed (m/s)
VL = 71.12       % [CALCULATED ON PAPER] Landing speed (m/s)

T_r = T*0.15;    % [CALCULATED] Max reverse thrust (N)
w = m*g;         % [CALCULATED] Weight of aircraft (N)

%%%%%%%%%%%%%%%%%
%Set plot length%
%%%%%%%%%%%%%%%%%

x = (0:LoR); % Length of runway at KSFO (m)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Velocity profile equations%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

V_t = sqrt((2*(T-(D-(RF*(w-L))))*x)/m);            % Velocity profile (takeoff)
V_l = sqrt((2*(T_r+(D_l+(RFB*(w))))*(LoR-x))/m);   % Velocity profile (landing)
V_lZ = sqrt((2*(T_r+(D_lz+(RFB*(w))))*(LoR-x))/m); % Velocity profile (landing w/ zero fuel)

%%%%%%
%Plot%
%%%%%%

figure('Name','Calculation of V1');
plot(x,V_t);
title('Landing and Takeoff Speed Profile for the A380');
xlabel('Runway Used (m)');
ylabel('Velocity (m/s)');
hold on;
plot (x,V_l);
plot (x,V_lZ,"--");
yline(VT,'-.','Takeoff speed');
yline(VL,'-.','Landing speed');
legend('V during takeoff','Max V to stop with MTOW','Max V to stop with zero fuel');




