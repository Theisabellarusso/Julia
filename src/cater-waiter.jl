function clean_ingredients(dish_name, dish_ingredients)

    (dish_name, Set(dish_ingredients))

end

function check_drinks(drink_name, drink_ingredients)

    if isdisjoint(Set(drink_ingredients), ALCOHOLS)

        return drink_name * " Mocktail"

    end

    return drink_name * " Cocktail"

end

function categorize_dish(dish_name, dish_ingredients)

    if issubset(dish_ingredients, VEGAN)

        dish_name * ": VEGAN"

    elseif issubset(dish_ingredients, VEGETARIAN)

        dish_name * ": VEGETARIAN"

    elseif issubset(dish_ingredients, PALEO)

        dish_name * ": PALEO"
        
    elseif issubset(dish_ingredients, KETO)

        dish_name * ": KETO"

    else

        dish_name * ": OMNIVORE"

    end

end

function tag_special_ingredients(dish)

    (dish[1], intersect(Set(dish[2]), SPECIAL_INGREDIENTS))

end

function compile_ingredients(dishes) 

    reduce(union, dishes)

end
    
function separate_appetizers(dishes, appetizers) 

    setdiff(dishes, appetizers)

end
    
function singleton_ingredients(dishes, intersection)  

    setdiff(reduce(union,dishes),intersection)
    
end
