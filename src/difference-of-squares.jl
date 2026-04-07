function square_of_sum(n)
    
    sum(1:n, init=0)^2

end

function sum_of_squares(n)
    
    sum((n^2 for n in 1:n),init=0)

end

function difference(n)
    
    square_of_sum(n) - sum_of_squares(n)

end
