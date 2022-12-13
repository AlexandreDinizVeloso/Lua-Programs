    for loop = 1, 6, 1 do
        for line = 1, 6, 1 do
            turtle.dig();
            turtle.digDown();
            turtle.digUp();
            turtle.forward();
        end
        turtle.digDown();
        turtle.digUp();
        if loop % 2 == 0 then
            turtle.turnLeft();
            turtle.dig();
            turtle.forward();
            turtle.turnLeft();
        elseif loop % 2 == 1 then
            turtle.turnRight();
            turtle.dig();
            turtle.forward();
            turtle.turnRight();
        end
    end