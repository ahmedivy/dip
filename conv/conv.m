function output = conv(image, kernel) 
    [R, C] = size(image);
    output = zeros(R, C);
    offset = floor(size(kernel, 1) / 2);
    for i = offset + 1 : R - offset
        for j = offset + 1 : C - offset
            output(i, j) = sum(sum(image(i-offset:i+offset, j-offset:j+offset) .* kernel));
        end
    end
end

    