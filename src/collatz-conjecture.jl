function collatz_steps(n)

    steps = 0

    if n <= 0

        throw(DomainError(n))

    end

    while n > 1
        
      if iseven(n)

        n = n ÷ 2 

       steps += 1

      elseif isodd(n)

        n = 3 * n + 1

       steps += 1

   end

   return steps

end
