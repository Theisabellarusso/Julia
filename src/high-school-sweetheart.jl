function cleanupname(name)

    strip(replace(name, "-" => " "))
    
end

function firstletter(name)

    string(first(cleanupname(name)))

end

function initial(name)

    uppercase(firstletter(name)* ".")

end

function couple(name1, name2)

    fi = initial(name1)

    si = initial(name2)

    (string("❤ ", fi,"  +  ", si, " ❤"))

end

