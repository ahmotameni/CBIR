
feature_vector = ones(1000, 202);
dataset_size = 1000;
dataset_addr = "dataset/";

for i = 0:dataset_size - 1
    img = imread(dataset_addr + i + ".jpg");
    disp(i)
    disp("dataset/" + i + ".jpg");
    hsv = hsvHistogram(img);
    auto = colorAutoCorrelogram(img);
    clr_mom = colorMoments(img);
    wave = waveletTransform(img, 'truecolor');
    [gaborSquareEnergy, gaborMeanAmplitude] = gaborWavelet(img);
    
    feature_vector(i + 1, :) = [hsv auto clr_mom wave gaborSquareEnergy gaborMeanAmplitude];
    
end
