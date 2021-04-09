function demo_mbd
% Allow a line to have its own 'ButtonDownFcn' callback
hLine = plot(rand(1,10),'ButtonDownFcn','disp(''This executes'')');
hLine.Tag = 'DoNotIgnore';
h = rotate3d;
h.ButtonDownFilter = @mycallback;
h.Enable = 'on';
a=0:pi/20:pi;
teta=0:pi/10:2*pi;
[a,teta]=meshgrid(a,teta);

X=sin(a).*cos(teta);
Y=sin(a).*sin(teta);
Z=cos(a);
 surf(X,Y,Z)
 
axis equal
 title('Birim küre {\bf R}^3')
 
% mouse-click on the line
function [flag] = mycallback (obj);surf(x,y,z)
% If the tag of the object is 'DoNotIgnore', then return true
objTag = obj.Tag;
if strcmpi(objTag,'DoNotIgnore')
   flag = true;
else
   flag = false;
end