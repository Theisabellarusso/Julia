function demote(n::Float64)

    return ceil(UInt8, n)

end

function demote(n::Integer)

    return Int8(n)

end

function preprocess(coll)

    return if coll isa Vector

        reverse(demote.(coll))

    elseif coll isa Set

        sort(demote.(coll), rev = true)

    else

        throw(MethodError(preprocess, (coll,)))

    end

end
