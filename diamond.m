w = 200; 
h = 200; 
Cx = w / 2; 
Cy = h / 2; 
radius = 60; 

image = zeros(h, w); 

for y = 1:h
    for x = 1:w
        distance = abs(x - Cx) + abs(y - Cy); 
        if distance <= radius
            image(y, x) = 1;
        end
    end
end

imshow(image); 