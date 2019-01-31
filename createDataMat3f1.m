function feature=createDataMat3f1( img, patchWidth, patchHeight )

       addpath( genpath('code_kota_common') );
       dataCsvMat = [];
       T = [];
       X = [];
    
       marginX = 32;
       marginY = 32;
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
end