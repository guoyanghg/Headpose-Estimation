function createDataMat3( folder, patchWidth, patchHeight )
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
        
        %imshow(resizedImage);
        %pause;
                
        resizedImage = double( resizedImage );
        hogParams1 = [9 8 2 1 0.2];
        hogParams2 = [9 16 2 1 0.2];
        hogParams3 = [9 32 2 1 0.2];
        feature = [HoG(resizedImage,hogParams1) ; HoG(resizedImage,hogParams2) ; HoG(resizedImage,hogParams3)]';
        
%         name = name(12:end);
%         expression = '([\+\-]\d+)([\+\-]\d+)';
%         str = regexp(name,expression,'tokens');
%         
%         pitch = str2num( str{1}{1} );
%         yaw = str2num( str{1}{2} );
        
%         dataCsvMat = [dataCsvMat ; pitch yaw feature ];
%         T = [T ; pitch yaw];
        X = [X ; feature ];
   
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

