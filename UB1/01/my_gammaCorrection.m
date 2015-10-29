function [ imgGC ] = my_gammaCorrection( img )
%MY_GAMMACORRECTION calculate a gamma corrected version of the image
GW = 2.2;
imgGC = ((img).^(1/GW));

end

