abstract type Pet end

struct Cat <: Pet

    name::String

end

struct Dog <: Pet

    name::String

end

name(pet::Pet) = pet.name

meets(a::Dog, b::Dog) = "sniffs"

meets(a::Cat, b::Dog) = "hisses"

meets(a::Dog, b::Cat) = "chases"

meets(a::Cat, b::Cat) = "slinks"

encounter(a, b) = "$(name(a)) meets $(name(b)) and $(meets(a, b))."

meets(a::Pet, b::Pet) = "is cautious"

meets(a::Pet, b) = "runs away"

meets(a, b) = "nothing happens"

