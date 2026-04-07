function transform(ch)

    if ch == '-'

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

 join(map(transform, collect(str)))
    
end
