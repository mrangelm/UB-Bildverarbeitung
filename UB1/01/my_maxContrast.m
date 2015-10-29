function [ imgGrayMaxHist, maxHist ] = my_maxContrast( imgGray )
%MY_HISTOGRAMMAX Maximizes the image contrast.

[x,y,z] = size(imgGray);

%Quelle: http://sabia.tic.udc.es/gc/Contenidos%20adicionales/trabajos/Imagenyvideo/Procesado%20Digital%20de%20la%20Imagen/pagina_superior5.htm
% alle Werte in einer Funktion f(x)
imgGray = reshape(imgGray, x*y*z, 1, 1);

% f(x)min
black = min(imgGray);
% f(x)max
white = max(imgGray);

% f(x) - f(x)min
imgGray = imgGray - black;
% max - min
white = white - black;

% f(x) - f(x)min/(max-min)
% imgGray = imgGray ./ white;
imgGray = imgGray ./ white;
imgGray = imgGray + min(imgGray);

imgGray = reshape(imgGray, x, y, z);

imgGrayMaxHist = imgGray;
maxHist = my_hist(imgGray);
    
end

