clear
clc
format short G
% Contiguity Matrix
cm =[0 1 1 1 1  
    1 0 1 0 1  
    1 1 0 1 0  
    1 0 1 0 1   
    1 1 0 1 0];

% Sum of Contiguity Matrix Rows
s = sum(cm,2);

% Row Standardized Spatial Weights Matrix
w = cm./s;

% Nawamin_g_TOTAL = 5750
% Ladprao_g_TOTAL = 18837
% klong Chan_g_TOTAL = 14655
% Lam Prathew_g_TOTAL = 12865
% Khlong Kum_g_TOTAL = 7173
x = [5750
    18837
    14655
    12865
    7173];

% Z-Scores for a Population  https://www.mathworks.com/help/stats/zscore.html
z = zscore(x,1);

% LISA
I = z.*(w*z);