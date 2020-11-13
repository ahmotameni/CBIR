
feature_vector = ones(1000, 152);
dataset_size = 1000;
dataset_addr = "dataset/";

for i = 0:dataset_size - 1
    img = imread(dataset_addr + i + ".jpg");
    disp(i)
    disp("dataset/" + i + ".jpg");
    
    hsv = hsvHistogram(img);
    wave = waveletTransform(img, 'truecolor');
    ehist = edgeDirectionHistogram(img);
    
    feature_vector(i + 1, :) = [hsv wave ehist];
    
end
