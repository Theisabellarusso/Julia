function transform(ch)

    return if ch == '-'

        "_"

    elseif isspace(ch) || isdigit(ch)

        ""

    elseif isuppercase(ch)

        "-$(lowercase(ch))"

    elseif 'α' <= ch <= 'ω'

        "?"

    else

        string(ch)

    end

end

function clean(str)

    return join(map(transform, collect(str)))

end
