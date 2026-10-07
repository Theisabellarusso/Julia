abstract type Pet end

struct Cat <: Pet

    name::String

end

struct Dog <: Pet

    name::String

end

name(pet::Pet) = pet.name

# Define multiple methods for meets(a, b)

meets(a::Dog, b::Dog) = "sniffs"

meets(a::Cat, b::Dog) = "hisses"

meets(a::Dog, b::Cat) = "chases"

meets(a::Cat, b::Cat) = "slinks"

# Implement the encounter(a, b) function

encounter(a, b) = "$(name(a)) meets $(name(b)) and $(meets(a, b))."

# Define three fallback methods for meets(a, b)

# Stubs are not provided for these, but look at the hints if necessary
meets(a::Pet, b::Pet) = "is cautious"

meets(a::Pet, b) = "runs away"

meets(a, b) = "nothing happens"

