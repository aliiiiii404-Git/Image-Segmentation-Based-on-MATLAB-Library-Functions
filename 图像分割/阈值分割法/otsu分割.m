% 读取灰度图像
grayImage = imread('悲情城市2_gray.bmp');

% 使用 Otsu 方法自动选择阈值
threshold = graythresh(grayImage); % Otsu阈值计算
binaryImage = imbinarize(grayImage, threshold);

% 显示结果
imshow(binaryImage);
title('Otsu 阈值分割');