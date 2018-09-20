function [rowMin,maxiMin,colMax,miniMax,sadlepointsRC,notSaddle,valueOfGame,optimalR,optimalC,fair,determinable] = MatrixGame(matrix)
    
rowMin = min(matrix,[],2)
    maxiMin = max(rowMin)
    maxiMin_index = find(rowMin==maxiMin);
    maxiMin_rowPos = zeros(size(matrix));
    for i=1:length(maxiMin_index)
        maxiMin_rowPos(maxiMin_index(i),find(matrix(maxiMin_index(i),:)==maxiMin)) = 1;
    end
    
colMax = max(matrix,[],1)
    miniMax = min(colMax)
    miniMax_index = find(colMax==miniMax);
    maxiMin_colPos = zeros(size(matrix));
    for i=1:length(miniMax_index)
        maxiMin_colPos(find(matrix(:,miniMax_index(i))==miniMax),miniMax_index(i)) = 1;
    end
    
%Determine Saddlepoint if length are 1
    sadlepointsRC = [];
    notSaddle = [];
    for ii=1:size(matrix,1)
        for iii=1:size(matrix,2)
            x = maxiMin_colPos(ii,iii);
            y = maxiMin_rowPos(ii,iii);
            if(x == 1 & y == 1)
                sadlepointsRC = [sadlepointsRC; ii iii];
            elseif(x ~= y)
                notSaddle = [notSaddle; ii iii];
            end
        end
    end
    sadlepointsRC
    if(size(sadlepointsRC,1) == 1)
        disp('Single saddle point also called a Unique Saddle point')
    else
        disp('There is Multiple Saddle points')
    end
    notSaddle
    
%Determine the Value of game
    valueOfGame = [];
    if(isempty(sadlepointsRC) == 0)
        valueOfGame = matrix(sadlepointsRC(1,1),sadlepointsRC(1,2))
    else
        disp('No Value of game since there is no saddlepoints')
    end
    
%Determine the optimal streategies for player C and player R
    [~,optimalC] = find(maxiMin_colPos==1);
    optimalC = unique(optimalC')
    [optimalR,~] = find(maxiMin_rowPos==1);
    optimalR = unique(optimalR)

%Determine if the game is fair
fair = 'FALSE';
if(miniMax == 0 & maxiMin == 0 & valueOfGame == 0)
    fair = 'TRUE'
    disp('miniMax = maxiMin = valueOfGame = 0 the game is fair')
else
    disp('miniMax = maxiMin = valueOfGame # 0 the game is not fair')
end

%Determine if the game is strictly determinable
determinable = 'FALSE';
if(miniMax == valueOfGame & miniMax == maxiMin & maxiMin == valueOfGame)
    determinable = 'TRUE';
    disp('miniMax == maxiMin == valueOfGame the game is strictly determinable')
else
    disp('miniMax # maxiMin # valueOfGame the game is not strictly determinable')
end
end
