function sortquantity!(qty)

    srtperm = sortperm(qty, rev = true)

    sort!(qty, rev = true)

    return srtperm
   
end

function sortcustomer(cust, srtperm)

    cust[srtperm]
    
end

function production_schedule!(cust, qty)
    
    srtperm = sortquantity!(qty)

    sorted_cust = sortcustomer(cust, srtperm)

    inverse = invperm(srtperm)

    return sorted_cust, inverse

end
