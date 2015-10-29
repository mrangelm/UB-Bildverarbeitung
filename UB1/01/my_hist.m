function [ hist ] = my_hist( imgGray )
%MY_HISTOGRAM calcuates the histogram of the image.
%Remember your image contains double values between [0-1].
%You might want to convert it back to uint8 values between [0-255].

imgGray = uint8(imgGray*255);
[f,c]=size(imgGray);

for i=1:256
    h(i) = 0;
end

for i=1:f
       for j=1:c
           k = imgGray(i,j);
           h(k+1) = h(k+1)+1;
       end
end

hist = h;

end

