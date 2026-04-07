function message(msg)
    
    strip(split(msg, ":")[2])
    
end

function log_level(msg)
    
    lowercase(split(split(msg, "]")[1], "[")[2])
    
end

function reformat(msg)
    
    level = log_level(msg)
    
    msg = message(msg)
    
    "$msg ($level)"
    
end
