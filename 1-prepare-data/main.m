
moves= 500; % number of moves;

features = [];
labels = [];

i = [1];

for i = 1:moves
    img = figure(1);
    url = 'http://192.168.137.44:8080/shot.jpg';
    im = imresize(imread(url),[100,100]);
    
    if mod(i,5) ==1
        imshow(im);
        i
    end



    im = bwOf(im);
    features(i,:) = (im(:)).';



    
end

csvwrite('feature.csv', features);