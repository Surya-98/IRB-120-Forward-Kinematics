function T = dhparam2matrix( theta, d, a, alpha)

    Rz = [cosd(theta) -sind(theta) 0    0;
          sind(theta)  cosd(theta) 0    0;
          0            0           1    0;
          0            0           0    1];
      
    Tz = [  1   0   0   0;
            0   1   0   0;
            0   0   1   d;
            0   0   0   1];    
    
    Tx = [  1   0   0   a;
            0   1   0   0;
            0   0   1   0;
            0   0   0   1];
    Rx = [  1   0            0              0
            0   cosd(alpha) -sind(alpha)    0
            0   sind(alpha)  cosd(alpha)    0
            0   0            0              1];
     
    T = Rz*Tz*Tx*Rx;
end
