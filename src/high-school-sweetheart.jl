function cleanupname(name)

    return strip(replace(name, "-" => " "))

end

function firstletter(name)

    return string(first(cleanupname(name)))

end

function initial(name)

    return uppercase(firstletter(name) * ".")

end

function couple(name1, name2)

    fi = initial(name1)

    si = initial(name2)

    return (string("❤ ", fi, "  +  ", si, " ❤"))

end
