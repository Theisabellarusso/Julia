function get_vector_of_wagons(args...)

    collect(args)
    
end

function fix_vector_of_wagons(each_wagons_id, missing_wagons)

    locomotive = each_wagons_id[3]

    first_two = each_wagons_id[1:2]

    middle = each_wagons_id[4:end]

    vcat(locomotive, missing_wagons, middle, first_two)

end

function add_missing_stops(route, stops...)

     merge(route, Dict("stops" => [stop.second for stop in stops]))
     
end

function extend_route_information(route; more_route_information...)

    merge(route, Dict(more_route_information))
    
end
