load 875_17M_56_FG.mat
[gGamma,cC] = meshgrid(gamma,C);
arrayC = cC(:)';
arrayGamma = gGamma(:)';
intensity = intensity';
arrayIntensity = intensity(:)';

numPoint = size(arrayIntensity,2);
xReal = zeros(size(arrayIntensity));
yReal = xReal;
cosine = xReal;

r = 50;

for i = 1: numPoint
    [xReal(i),yReal(i)] = map(r,arrayGamma(i),arrayC(i));
    cosine(i) = typeBCosine(r,arrayGamma(i),arrayC(i));
end

value = arrayIntensity.*cosine;

d = -50:0.1:50;
[xq,yq] = meshgrid(d,d);

vq = griddata(xReal,yReal,value,xq,yq,'natural');
% contourf(xq,yq,vq);
surf(xq,yq,vq);
shading interp

% F = scatteredInterpolant(xReal',yReal',value');


