function my_plotRGBSplit( imgRGB, imgR, imgG, imgB )
%MY_PLOTRGBSPLIT Plots the original RGB image and 
%its splitted R,G,B channels in a single figure. 

[height0 , width0] = size(imgR);
[height1 , width1] = size(imgG);
[height2 , width2] = size(imgB);
black = zeros(size(imgR));

Roff = struct('img', imgR, 'x', height0, 'y', width0);
Goff = struct('img', imgG, 'x', height1, 'y', width1);
Boff = struct('img', imgB, 'x', height2, 'y', width2);

Icol = imgRGB;
%% figure layout
ax(1) = subplot(2,2,1);
Roff = mergeChannels(imgR, black, black);
im(1) = imshow(Roff);
title({'Red Channel'});

ax(2) = subplot(2,2,2);
Goff = mergeChannels(black, imgG, black);
im(2) = imshow(Goff);
title({'Green Channel'});

ax(3) = subplot(2,2,3);
Boff = mergeChannels(black, black, imgB);
im(3) = imshow(Boff);
title({'Blue Channel'});

ax(4) = subplot(2,2,4);
im(4) = imshow(Icol);
title({'Original'});
end
%%funtion to merged
function merged = mergeChannels(a, b, c)
    merged = cat(3, cat(3, a, b), c);
end

