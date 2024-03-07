w = 200;
h = 200;
Cx = w / 2;
Cy = h / 2;
radius = 60;

image = zeros(w, h);

for y = 1:w
    for x = 1:h
        distance = sqrt((x - Cx)^2 + (y - Cy)^2);
        if distance <= radius 
            image(y, x) = 1;
        end
    end
end

imshow(image); 
