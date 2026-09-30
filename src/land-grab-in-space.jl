# define the Coord type
struct Coord

    x::UInt16

    y::UInt16

end

# define the Plot keyword type
@kwdef struct Plot

    bottom_left::Coord
    top_right::Coord

end

function is_claim_staked(claim::Plot, register::Set{Plot})

    return claim in register

end

function stake_claim!(claim::Plot, register::Set{Plot})

    if claim in register

        return false

    else

        push!(register, claim)

        return true

    end

end

function get_longest_side(claim::Plot)

    w = claim.top_right.x - claim.bottom_left.x
    h = claim.top_right.y - claim.bottom_left.y

    return max(w, h)

end

function get_claim_with_longest_side(register::Set{Plot})

    mx = UInt16(0)

    for c in register

        sd = get_longest_side(c)

        if sd > mx

            mx = sd

        end

    end

    ou = Set{Plot}()

    for c in register

        if get_longest_side(c) == mx

            push!(ou, c)

        end

    end

    return ou

end
