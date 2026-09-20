function print_name_badge(id, name, department)
    
    if ismissing(id) && isnothing(department)

        "$name - OWNER"

    elseif ismissing(id)

        "$name - $(uppercase(department))"

    elseif isnothing(department)

        "[$id] - $name - OWNER"
    else

        "[$id] - $name - $(uppercase(department))"
    end
end

function salaries_no_id(ids, salaries)

    sum(salaries[ismissing.(ids)])


end
