%To load the image and convert it to binary
img = im2bw(imread("Turkey.png")); 

%Starting Monte Carlo Simulation
x = round(rand(1000,1) * 1578); 
y = round(rand(1000,1) * 712); 
x(x==0) = 1; 
y(y==0) = 1; 

AreaofRect = 1388292.63;
totalpoints = 1000;
SumOfBlack = 0;

for i=1:1000
   if( img(y(i),x(i)) == 0 ) 
   SumOfBlack = SumOfBlack+1; 
 endif 
endfor 

%Estimating the area of the region 
AreaofObj = AreaofRect * (SumOfBlack/1000); AreaofObj 