function ispangram(input)

    return all(letter -> letter in lowercase(input), 'a':'z')

end
