function Solution = golf_club_fertilizer_problem()
  
Z = [0.2175;
     0.2350;
     0.2200;
     0.1950;
     0.1850];

cnstrLHS = [-10  -8 -12 -10 -15;
             10   8  12  10  15;
             -8 -11  -7 -10 -10;
              8  11   7  10  10;
            -12 -15 -12 -10  -6;
             12  15  12  10   6;
              1   1   1   1   1;
             -1  -1  -1  -1  -1;
             -1   0   0   0   0;
              0  -1   0   0   0;
              0   0  -1   0   0;
              0   0   0  -1   0;
              0   0   0   0  -1];

cnstrRHS = [ -10;
            10.5;
              -8;
             8.5;
             -12;
            12.5; 
               1;
              -1;
               0;
               0;
               0;
               0;
               0];
      
Solution = linprog(Z,cnstrLHS,cnstrRHS);
Solution
end