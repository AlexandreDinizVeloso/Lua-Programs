local inf = true;
while inf == true do
    local fuel = turtle.getFuelLevel();
    if fuel <= 300 then
        turtle.refuel();
    end
    for loop = 1, 16, 1 do
        for line = 1, 15, 1 do
            turtle.dig();
            turtle.digDown();
            turtle.digUp();
            turtle.forward();
        end
        turtle.digDown();
        turtle.digUp();
        if loop % 2 == 0 and loop ~= 16 then
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
    turtle.turnRight();
    for reset = 1, 16, 1 do
        turtle.forward();
    end
    turtle.turnRight();
    turtle.down();
    turtle.digDown();
    turtle.down();
    turtle.digDown();
    turtle.down();
end
