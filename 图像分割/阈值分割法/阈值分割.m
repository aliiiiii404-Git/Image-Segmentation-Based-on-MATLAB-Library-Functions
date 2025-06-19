% 读取图像
img = imread('悲情城市2_gray.bmp');  % 直接读取灰度图像

% 设置阈值
threshold = 55;

% 阈值分割
binary_img = img > threshold;

% 显示结果
imshow(binary_img);
title('阈值分割结果');