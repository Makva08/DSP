fs=8000;
dt=1/fs;
t=0:dt:0.1; %801 steps
%Working with only one chord
%fc=440; %Hz for A major 1st octave
% x=cos(2*pi*fc*t);
% plot(t,x)
% sound(x,fs)

%Working with 3 Chords simultaneously
fc=[440;550;660]; %A, C#, E
y=cos(2*pi*fc*t);
tiledlayout(2,1)
ax1 = nexttile;
plot(ax1,t,y)
%Uncomment to hear those chords
% sound(y(1,:),fs);
% sound(y(2,:),fs);
% sound(y(3,:),fs);
z=sum(y);
z=z/3;
ax2=nexttile;
plot(ax2,t,z);
chord=repmat(z,1,10); %makes 10 copies of vector z
sound(chord,fs); 

% On the picture in the folder you can observe how I used Signal Analyzer features. There, I have observed the sum of all 3 chords, and their frequency spectrum.
% Next, I duplicated the signal and used bandpass filter to only see C# and its spectrum.
% You can export the new signal to your MATLAB code and listen to the new chord. There are some distortions, but overal its pretty much the same as regular C#.