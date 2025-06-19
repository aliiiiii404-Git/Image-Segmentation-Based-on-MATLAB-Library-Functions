function output = regionGrowing(inputImage, seed, threshold)
    [rows, cols] = size(inputImage);
    output = false(rows, cols);
    
    % 使用队列进行种子点扩展
    queue = seed;
    output(seed(1), seed(2)) = true;
    
    while ~isempty(queue)
        currentPixel = queue(1, :);
        queue(1, :) = [];
        
        % 邻域坐标
        neighbors = [currentPixel(1)-1, currentPixel(2); 
                     currentPixel(1)+1, currentPixel(2);
                     currentPixel(1), currentPixel(2)-1;
                     currentPixel(1), currentPixel(2)+1];
        
        for i = 1:size(neighbors, 1)
            r = neighbors(i, 1);
            c = neighbors(i, 2);
            
            % 检查是否在图像内
            if r > 0 && r <= rows && c > 0 && c <= cols
                % 判断是否满足相似性条件
                if abs(double(inputImage(r, c)) - double(inputImage(currentPixel(1), currentPixel(2)))) <= threshold && ~output(r, c)
                    output(r, c) = true;
                    queue = [queue; r, c]; % 将相邻点加入队列
                end
            end
        end
    end
end