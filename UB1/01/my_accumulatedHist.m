function [ aHist ] = my_accumulatedHist( imgGray )
%MY_ACCUMULATEDHIST Calculate the NORMALIZED accumulated histogram

aHist = zeros(256, 1);
sHist = my_hist(imgGray);

accumulate= 0;
for i = 0:255
    accumulate = accumulate + sHist(i+1);
    aHist(i+1) = accumulate;
end

aHist = double(aHist);
aHist = aHist .* (1 / max(aHist));

end

