function score(x, y)

    radius = sqrt(x * x + y * y)

    if radius <= 1

        10

    elseif radius <= 5

        5

    elseif radius <= 10

        1

    else radius >= 10

        0

end
