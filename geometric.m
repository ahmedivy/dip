img = double(rgb2gray(imread('tree.jpg')));
[R, C] = size(img);
g_new = zeros(R, C);

a0 = 2; a1 = 0; a2 = 0;
b0 = 0; b1 = 1; b2 = 0;

for i = 1:R
    for j = 1:C
        result = [a0, a1, a2; b0, b1, b2; 0, 0, 1] * [i; j; 1];
        x = round(result(1));
        y = round(result(2));
        
        if x >= 1 && y >= 1 && x <= R && y <= C
            g_new(x, y) = img(i, j);
        end
    end
end

imshow(uint8(g_new)); % Display the transformed image
