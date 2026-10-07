using Statistics

function rationalize(successes, trials)

    return successes .// trials

end

function probabilities(successes, trials)

    return successes ./ trials

end

function checkmean(successes, trials)

    r, p = mean(rationalize(successes, trials)),
        mean(probabilities(successes, trials))

    return float(r) == p || r

end

function checkprob(successes, trials)

    r, p = prod(rationalize(successes, trials)),
        prod(probabilities(successes, trials))

    return float(r) == p || r

end
