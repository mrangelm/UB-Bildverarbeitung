function [ imgGray ] = my_RGB2Gray( img )
%MY_RGBTOGRAY converts the RGB image to a grayscale image.
% before the conversion a gamma correction is performed.

%imgGray = rgb2gray(img);

imgGC = my_gammaCorrection(img);
imgGray = zeros(size(img));
 
% von Wikipedia
gray = 0.2126 .* imgGC(:,:,1) + 0.7152.*imgGC(:,:,2) + 0.0722.*imgGC(:,:,3);
for i=1:3
    imgGray(:,:,i) = gray;
end
 
end

