noisyImagePath = "E:\dip\noisy.png"; 
noisyImage = double(rgb2gray(imread(noisyImagePath)));
[R, C] = size(noisyImage);
resultImage = zeros(R, C); 
kernel_size = 3;
offset = floor(kernel_size / 2);

for i = offset + 1 : R - offset
    for j = offset + 1 : C - offset
        resultImage(i, j) = max(max(noisyImage(i-offset:i+offset, j-offset:j+offset)));
    end
end

imshow(uint8(resultImage)); 
