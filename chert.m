
autos = ones(1000, 64);
feature_vector = ones(1000, 164);
dataset_size = 1000;
dataset_addr = "dataset/";

for i = 0:dataset_size - 1
    img = imread(dataset_addr + i + ".jpg");
    disp(i)
    disp("dataset/" + i + ".jpg");
    auto = colorAutoCorrelogram(img);
    [gaborSquareEnergy, gaborMeanAmplitude] = gaborWavelet(img);
    wave = waveletTransform(img, 'truecolor');
    
    feature_vector(i + 1, :) = [auto gaborSquareEnergy gaborMeanAmplitude wave];
    
end
