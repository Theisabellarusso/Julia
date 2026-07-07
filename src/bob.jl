function bob(stimulus)

    cleaned = strip(stimulus)

    if isempty(cleaned)

        "Fine. Be that way!"
        
    elseif uppercase(cleaned) == cleaned && any(isletter, cleaned) && endswith(cleaned, "?")
    
        "Calm down, I know what I'm doing!"

    elseif uppercase(cleaned) == cleaned && any(isletter, cleaned)

        "Whoa, chill out!"

    elseif endswith(cleaned, "?")

        "Sure."

    else

        "Whatever."

end

 end
