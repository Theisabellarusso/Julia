function humiditycheck(pct_humidity)

    if pct_humidity > 70

       error("humidity check failed: $pct_humidity%")

    else

        @info "humidity level check passed: $pct_humidity%"

    end
    
end

function temperaturecheck(temperature)

    if isnothing(temperature)

        throw(ArgumentError("sensor is broken"))
        
    elseif temperature > 500

        throw(DomainError(temperature))

    else

        @info "temperature check passed: $temperature °C"

    end
    
end

    struct MachineError <: Exception end

function machinemonitor(pct_humidity, temperature)

    failed = false

    try

        humiditycheck(pct_humidity)

    catch problem
        
        if problem isa ErrorException

            @error "humidity level check failed: $pct_humidity%"

            failed = true

        else

            rethrow()

        end

    end

    try
        temperaturecheck(temperature)

    catch problem

        if problem isa ArgumentError

            @warn "sensor is broken"

            failed = true

        elseif problem isa DomainError

            @error "overheating detected: $temperature °C"

            failed = true

        else

            rethrow()

        end

    end

    if failed

        throw(MachineError())

    end

end
