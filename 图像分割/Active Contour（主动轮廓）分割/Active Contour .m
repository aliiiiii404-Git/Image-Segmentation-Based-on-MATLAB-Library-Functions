% 读取灰度图像
grayImage = imread('悲情城市2_gray.bmp');

% 初始化一个粗略的掩膜
mask = zeros(size(grayImage));
mask(25:end-25, 25:end-25) = 1; % 中心区域设为1

% 使用Active Contour进行分割
bw = activecontour(grayImage, mask, 1000 ); % 迭代次数可根据需要调整

% 显示结果
imshow(bw);
title('Active Contour 分割');