% bt = Bluetooth('HC-05',1);
% fopen(bt);


moves= 30; % number of moves;

features = [];
labels = [];

i = [1];

for i = 1:moves
    img = figure(1);
    url = 'http://192.168.137.30:8080/shot.jpg';
    im = imresize(imread(url),[100,100]);
    imshow(im);
    k = waitforbuttonpress;
    value = double(get(gcf,'CurrentCharacter'));
    
    if value == 'w'
        disp('UP');
        fwrite(bt, 1);   
        im = bwOf(imresize(im, [20,20]));
        features(i,:) = (im(:)).';
        labels(i,:) = zeros(1,8);
        labels(i,1) = 1;
    end

    if value == 's'
        disp('Stop');
        fwrite(bt, 4);
        im = bwOf(imresize(im, [20,20]));
        features(i,:) = (im(:)).';
        labels(i,:) = zeros(1,8);
        labels(i,4) = 1;
    end

    if value == 'a'
        disp('Left');
        fwrite(bt, 2);
        im = bwOf(imresize(im, [20,20]));
        features(i,:) = (im(:)).';
        labels(i,:) = zeros(1,8);
        labels(i,2) = 1;
    end

    if value == 'd'
        disp('Right');
        fwrite(bt, 3);
        im = bwOf(imresize(im, [20,20]));
        features(i,:) = (im(:)).';
        labels(i,:) = zeros(1,8);
        labels(i,3) = 1;
    end

    if value == ''
        disp('Pause');
        fwrite(bt, 5);
        im = bwOf(imresize(im, [20,20]));
        features(i,:) = (im(:)).';
        labels(i,:) = zeros(1,8);
        labels(i,5) = 1;

    end
    
    close(img);
    
end


