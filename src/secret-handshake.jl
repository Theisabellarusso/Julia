function secret_handshake(code)

    actions = ["wink", "double blink", "close your eyes", "jump"]

    handshake = []

    for i in 0:3

        if (code & (1 << i)) != 0

            push!(handshake, actions[i+1])

        end
        
    end
