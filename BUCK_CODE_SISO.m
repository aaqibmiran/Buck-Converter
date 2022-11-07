clear all
clc
Vin=input("Enter The input voltage: ");
Vout=input("Enter The Desired Output Voltage: "); 
Iout=input("Enter The output Current: "); 
Fsw=input("Switching Frequency: "); 
D=Vout/Vin; 
Rl=Vout/Iout; 
idelta=0.11*Iout, 
vdelta=0.05*Vout;  
Tsw=1/Fsw; 
Ton=D*Tsw;  
Lm=(Vout*(1-D))*Ton/idelta;
Lf=Lm+(0.1*Lm)
Cm=10*((1-D)*Vout*Tsw*Tsw)/(vdelta*8*Lf*1);
Cf=Cm+(0.1*Cm)
Pl=tf([Vin],[(Lf*Cf) (Lf/Rl) 1])
Z=minreal(Pl); 
%Hs=minreal(ZRC/Z); 
controlSystemDesigner(Z)