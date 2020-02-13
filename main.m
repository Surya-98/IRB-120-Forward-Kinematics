%% RBE 501 HW 2B
%

%% Question 7
% The following is a function that plots the 3D Stick figure of the arm and 
% and outputs a transformation matrix.
%% 
% <include>plotarm.m</include>

%% Extra Credits
% The stick model has been replaced by imported CAD data
%% 
% <include>plotarmcad.m</include>


%% Question 8
function main()
% *Configuration 1*
T = plotarm(0,30,-30,0,0,0)
%%
T = plotarmcad(0,30,-30,0,0,0);
%%

eul = rotm2eul(T(1:3,1:3), 'zyx');
eul = [rad2deg(eul(3)) rad2deg(eul(2)) rad2deg(eul(1))];
disp('End Effector Position in mm')
disp(T(1:3,4))
disp('Angles in degrees')
disp(eul)
%%
%Comparing these configurations with the output from Robot Studio
%%
% <<Config1.png>> 
% 
%%
% *Configuration 2*
T = plotarm(0,30,-30,60,-45,0)
%%
T = plotarmcad(0,30,-30,60,-45,0);
%%

eul = rotm2eul(T(1:3,1:3), 'zyx');
eul = [rad2deg(eul(3)) rad2deg(eul(2)) rad2deg(eul(1))];
disp('End Effector Position in mm')
disp(T(1:3,4))
disp('Angles in degrees')
disp(eul)
%%
%Comparing these configurations with the output from Robot Studio
%%
% <<Config2.png>> 
% 
%%

% *Configuration 3*
T = plotarm(-30,30,-30,60,-45,30)
%%
T = plotarmcad(-30,30,-30,60,-45,30);
%%

eul = rotm2eul(T(1:3,1:3), 'zyx');
eul = [rad2deg(eul(3)) rad2deg(eul(2)) rad2deg(eul(1))];
disp('End Effector Position in mm')
disp(T(1:3,4))
disp('Angles in degrees')
disp(eul)
%%
%Comparing these configurations with the output from Robot Studio
%%
% <<Config3.png>> 
% 
%%

% *Configuration 4*
T = plotarm(0,-30,30,0,0,0)
%%
T = plotarmcad(0,-30,30,0,0,0);
%%

eul = rotm2eul(T(1:3,1:3), 'zyx');
eul = [rad2deg(eul(3)) rad2deg(eul(2)) rad2deg(eul(1))];
disp('End Effector Position in mm')
disp(T(1:3,4))
disp('Angles in degrees')
disp(eul)
%%
%Comparing these configurations with the output from Robot Studio
%%
% <<Config4.png>> 
% 
%%

% *Configuration 5*
T = plotarm(0,-30,30,90,-90,-90)
%%
T = plotarmcad(0,-30,30,90,-90,-90);
%%

eul = rotm2eul(T(1:3,1:3), 'zyx');
eul = [rad2deg(eul(3)) rad2deg(eul(2)) rad2deg(eul(1))];
disp('End Effector Position in mm')
disp(T(1:3,4))
disp('Angles in degrees')
disp(eul)
%%
%Comparing these configurations with the output from Robot Studio
%%
% <<Config5.png>> 
% 
%%
%This is essentially the same, as the image and our answer would give the
%same rotation matrix
disp(eul2rotm([deg2rad(0) deg2rad(90) deg2rad(-90)],'zyx'))
disp(T(1:3,1:3))
%%
% *Thus there was no deviation between the result obtained from MATLAB and
% Robot Studio except that it has been rounded off in Robot Studio*
end
