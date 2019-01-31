function bb = createBB( center, width, height )
%CREATEBB Summary of this function goes here
%   Detailed explanation goes here
    bb(1) = center(1)-width/2;
    bb(2) = center(2)-height/2;
    bb(3) = center(1)+width/2-1;
    bb(4) = center(2)+height/2-1;
    bb = int32(bb);
end

