% 假设原图已经是灰度图
grayImage = imread('悲情城市2_gray.bmp'); % 读取灰度图像
% 使用Canny边缘检测
edges = edge(grayImage, 'Canny');

% 显示结果
imshow(edges);
title('Canny边缘检测');