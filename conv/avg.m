function resultImage = average(image, kernel_size) 
    [R, C] = size(image);
    resultImage = zeros(R, C); 
    offset = floor(kernel_size / 2);
    kernel = ones(kernel_size, kernel_size) / (kernel_size * kernel_size);

    for i = offset + 1 : R - offset
        for j = offset + 1 : C - offset
            resultImage(i, j) = sum(sum(noisyImage(i-offset:i+offset, j-offset:j+offset) .* kernel));
        end
    end

    
end

imgPath = 'E://';
noisyImage = double(rgb2gray(imread(noisyImagePath)));

imshow(uint8(resultImage)); 