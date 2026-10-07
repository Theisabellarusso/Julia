function create_inventory(items)

    return add_items(Dict(), items)

end

function add_items(inventory, items)

    for item in items

        inventory[item] = haskey(inventory, item) ? inventory[item] + 1 : 1

    end

    return inventory

end

function decrement_items(inventory, items)

    for item in items

        if haskey(inventory, item)

            inventory[item] = max(inventory[item] - 1, 0)

        end

    end

    return inventory
end

function remove_item(inventory, item)

    return delete!(inventory, item)

end

function list_inventory(inventory)

    return sort([item for item in inventory if item.second > 0])

end
