function count_nucleotides(strand)
    
    counts = Dict('A' => 0, 'C' =>  0, 'G' => 0, 'T' => 0)

    for nucleotides in strand

      if nucleotides == 'A'

          counts['A'] += 1

    elseif nucleotides == 'C'

        counts['C'] += 1

    elseif nucleotides == 'G' 

        counts['G'] += 1

    elseif nucleotides == 'T'

        counts['T'] += 1

    else

        throw(DomainError(strand, "invalid nucleotide"))
        
    end
    
end
    
    return counts
    
end
