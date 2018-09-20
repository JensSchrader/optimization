function [] = mini(objectiveFunction, numberOfUnknowns, constrants, bounds)
    syms y;
    matrix = [];
    for i = 1: length(constrants)
        hold on
        disp(func2str(constrants{i}))
        disp(' change to ')
        constrants{i} = str2func(strrep(func2str(constrants{i}),'<','='));
        constrants{i} = str2func(strrep(func2str(constrants{i}),'>','='));
        disp(func2str(constrants{i}))
        matrix = [matrix; 0, solve(constrants{i}([0,y]))];
        
        %Draw point A
            b = matrix(1,1);
            a = matrix(1,2);
            scatter(a,b)
            text(a+0.2, b+0.2, ['(',rat(a),',',rat(b),')'], 'FontSize', 7);
            matrix = [matrix;solve(constrants{i}([y,0])), 0]
        %Draw point B
            b = matrix(2,1);
            a = matrix(2,2);
            scatter(a,b)
            text(a+0.2, b+0.2, ['(',rat(a),',',rat(b),')'], 'FontSize', 7);
        %draw line between A and B
            line(matrix(1,:),matrix(2,:));
            
        matrix = [];
    end  
    disp('The feasible region is found in the area closest to zero.')
hold off
end