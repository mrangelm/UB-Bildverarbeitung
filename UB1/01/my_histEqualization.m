function [ imgHE ] = my_histEqualization( imgGray, aHist )
%MY_HISTEQUALIZATION Changes the contrast by using
%histogram equlization. The function gets the original gray image and
%its normalized accumulated histogram.
[a,b,c] = size(imgGray);
imgHE = zeros(a,b,c);

imgGray = uint8(imgGray*255);

for y = 1:a
    for x = 1:b
        intensity = aHist(imgGray(y,x,1)+1);
        imgHE(y,x,:) = [intensity intensity intensity];
    end
end

end

