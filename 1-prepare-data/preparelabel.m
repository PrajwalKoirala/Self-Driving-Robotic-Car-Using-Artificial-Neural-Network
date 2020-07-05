
moves= 300; % number of moves;

feature = csvread('feature.csv');
features=[];
labels = [];
i = [1];

while i <= moves
    i
    img = reshape(feature(i,:),[100,100])/255;
    imshow(img);
    k = waitforbuttonpress;
    value = double(get(gcf,'CurrentCharacter'));
    
    if value == 'w'
        disp('UP');  
        im = imresize(img, [20,20]);
        features(i,:) = (im(:)).';
        labels(i,:) = zeros(1,8);
        labels(i,1) = 1;

    elseif value == 's'
        disp('Stop');
        im = (imresize(img, [20,20]));
        features(i,:) = (im(:)).';
        labels(i,:) = zeros(1,8);
        labels(i,4) = 1;

    elseif value == 'a'
        disp('Left');
        im = (imresize(img, [20,20]));
        features(i,:) = (im(:)).';
        labels(i,:) = zeros(1,8);
        labels(i,2) = 1;

    elseif value == 'd'
        disp('Right');
        im = (imresize(img, [20,20]));
        features(i,:) = (im(:)).';
        labels(i,:) = zeros(1,8);
        labels(i,3) = 1;

    elseif value == 'z'
        disp('Pause');
        im = (imresize(img, [20,20]));
        features(i,:) = (im(:)).';
        labels(i,:) = zeros(1,8);
        labels(i,5) = 1;
        
%     elseif value == 'o'
%         disp('Neglected');
    
    else
         i = i-1;
    end

    i = i+1;
    
end

csvwrite('l.csv',labels);
csvwrite('f.csv', features);
