function [ img ] = my_loadImage( filename )
%MY_LOADIMAGE Loads an image with the given file.
%The image data type needs to be converted to double.
% The range needs to be converted from [0-255] to [0.0-1.0]

img = double(imread(filename))/255;
% img is a 3-dimensional MxNx3 matrix, the elements in img(:,:,1) are
% interpreted as red intensities, in img(:,:,2) as green intensities, and in
% img(:,:,3) as blue intensities

end

