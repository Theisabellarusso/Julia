function square_of_sum(n)

    sum(1:n)^2

end

function sum_of_squares(n)

    sum((n^2 for n = 1:n))

end

function difference(n)

    square_of_sum(n) - sum_of_squares(n)

end
