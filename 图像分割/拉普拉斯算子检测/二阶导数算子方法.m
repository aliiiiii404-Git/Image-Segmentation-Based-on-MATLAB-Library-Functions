% 读取灰度图像
grayImage = imread('悲情城市2_gray.bmp');
grayImage = double(grayImage);

% 使用拉普拉斯算子进行边缘检测
laplacianFilter = fspecial('laplacian', 0.2); % 创建拉普拉斯滤波器，0.2为滤波系数
edgeImage = imfilter(grayImage, laplacianFilter, 'replicate');

% 显示结果
figure;
imshow(edgeImage, []);
title('拉普拉斯算子边缘检测');

% 对结果进行阈值分割，提取边缘
threshold = 5; % 可以根据图像情况调整阈值
binaryEdgeImage = edgeImage > threshold;

% 显示二值化后的分割结果
figure;
imshow(binaryEdgeImage);
title('拉普拉斯算子分割结果');