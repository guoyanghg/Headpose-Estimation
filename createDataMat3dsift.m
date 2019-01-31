function createDataMat3dsift( folder, patchWidth, patchHeight )
%CREATEDATAMAT Summary of this function goes here
%   Detailed explanation goes here
    
    % Oriented HOG
    addpath( genpath('code_kota_common') );
    
    listing = dir([folder '/*.jpg']);
    dataCsvMat = [];
    T = [];
    X = [];
    
    marginX = 32;
    marginY = 32;
        
    for i=1:length(listing)
        name = [folder '/' listing(i).name];
        img = imread( name );
        img = wextend(2,'zpd',img, [marginY,marginX] );
%         a = textread(strrep(name, 'jpg', 'txt'), '%s');
%         center(1) = str2num(a{3}) + marginX;
%         center(2) = str2num(a{4}) + marginY;
%         width = str2num(a{5});
%         height = str2num(a{6});
%         bb = createBB( center, ( width + height ) / 2 , ( width + height ) / 2 );
%         croppedImage = img( bb(2):bb(4), bb(1):bb(3), : );
        resizedImage = imresize(img, [patchWidth patchHeight]);
        randn('state',0) ;
        rand('state',0) ;
        resizedImage = single(vl_imdown(rgb2gray(resizedImage))) ;
        
        binSize = 4 ; % bin size in pixels
        magnif = 3 ; % bin size / keypoint scale

        elaps_dsift = [] ;
        elaps_dsift_fast = [] ;
        err_dsift = [] ;
        err_dsift_fast = [] ;

        binSizeRange = [3 4 5 6] ;
        for wi = 1:length(binSizeRange)
         binSize = binSizeRange(wi) ;
         scale = binSize / magnif ;
   


  [f, d] = vl_dsift(vl_imsmooth( resizedImage, sqrt(scale.^2 - .25)), ...
                    'size', binSize, ...
                    'step', 2, ...
                     'bounds', [0,0,32,32], ...
                    'floatdescriptors', ...
                    'verbose') ;



  [f, dfast] = vl_dsift(vl_imsmooth( resizedImage, sqrt(scale.^2 - .25)), ...
                        'size', binSize, ...
                        'step', 2, ...
                       'bounds', [0,0,32,32], ...
                        'floatdescriptors', ...
                        'fast', ...
                        'verbose') ;
  

 






  
        end
        
        
        
        X(:,:,i) = dfast;
   
    end
    
    %csvwrite('dataCsvMat.csv', dataCsvMat );
    if ~exist('Xfolder') 
      mkdir('Xfolder');        
    end 
    
%     if ~exist('Tfolder') 
%       mkdir('Tfolder');        
%     end 
    save(strcat('Xfolder/',folder(length(folder)-1:length(folder)),'X'), 'X');
%     save(strcat('Tfolder/',folder(length(folder)-3:length(folder)),'T'), 'T');
end