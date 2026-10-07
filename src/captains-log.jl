using Random

function random_planet()

    return rand(['D', 'H', 'J', 'K', 'L', 'M', 'N', 'R', 'T', 'Y'])

end

function random_ship_registry_number()

    return "NCC-$(rand(1000:9999))"

end

function random_stardate()

    return rand(41000.0:42000.0)

end

function random_stardate_v2()

    return rand(41000.0:0.1:42000.0)

end

function pick_starships(starships, number_needed)

    return shuffle(starships)[1:number_needed]

end
