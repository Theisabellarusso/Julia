function time_to_mix_juice(juice)

    if juice == "Pure Strawberry Joy"

        0.5

    elseif juice == "Energizer" || juice == "Green Garden"

        1.5

    elseif juice == "Tropical Island"

        3.0

    elseif juice == "All or Nothing"

        5.0

    else

        2.5
        
    end
    
end

function wedges_from_lime(size)

    if size == "small"

        6

    elseif size == "medium"

        8

    elseif size == "large"

        10

    end
    
end

function limes_to_cut(needed, limes)

    if needed <= 0

        return 0

    end

    total = 0

    count = 0

    for lime in limes
        
        count += 1

        total += wedges_from_lime(lime)

        if total >= needed

            return count

        end

    end

    count

end

function order_times(orders)

    [time_to_mix_juice(o) for o in orders]

end

function remaining_orders(time_left, orders)

    remaining_time = time_left

    i = 1

    while i <= length(orders) && remaining_time > 0

        t = time_to_mix_juice(orders[i])

        remaining_time -= t

        i += 1

    end

    orders[i:end]

end
