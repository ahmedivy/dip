noisyImagePath = "E:\dip\noisy.png"; 
noisyImage = double(rgb2gray(imread(noisyImagePath)));
[R, C] = size(noisyImage);
resultImage = zeros(R, C); 
kernel_size = 3;
offset = floor(kernel_size / 2);
kernel = ones(kernel_size, kernel_size) / (kernel_size * kernel_size);  % Normalize

for i = offset + 1 : R - offset
    for j = offset + 1 : C - offset
        resultImage(i, j) = sum(sum(noisyImage(i-offset:i+offset, j-offset:j+offset) .* kernel));
    end
end

imshow(uint8(resultImage)); 
