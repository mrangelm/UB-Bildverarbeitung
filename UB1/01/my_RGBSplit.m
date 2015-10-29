function [ imgR, imgG, imgB ] = my_RGBSplit( imgRGB )
%my_RGBSplit Splits the RGB channels of the images in separate images. 
%
%when we want to have all colors in a independent variable, we can make:
imgR = imgRGB(:,:,1);
imgG = imgRGB(:,:,2);
imgB = imgRGB(:,:,3);

end

