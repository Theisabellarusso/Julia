# define the TreasureChest{T} type

struct TreasureChest{T}

password::String

treasure::T

function get_treasure(password_attempt, chest)

    if chest.password == password_attempt

        chest.treasure

    else

        nothing

    end
    
end 

function multiply_treasure(multiplier, chest)

TreasureChest(chest.password, fill(chest.treasure, n))
    
end
