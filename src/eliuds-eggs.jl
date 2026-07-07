function eggcount(number)

    eggs = 0

    while number > 0

        if number % 2 == 1

            eggs += 1
            
        end

        number = number ÷ 2

    end

    return eggs

end
