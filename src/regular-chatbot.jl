function is_valid_command(msg)

    occursin(r"^Chatbot"i, msg)
    
end

function remove_emoji(msg)

    replace(msg, r"emoji[0-9]+" => "")
    
end

function check_phone_number(number)

    if occursin(r"^\(\+\d\d\) \d\d\d-\d\d\d-\d\d\d$", number)

        "Thanks! You can now download me to your phone."

    else

        "Oops, it seems like I can't reach out to $number"

    end

end

function getURL(msg)

    [m.match for m in eachmatch(r"\w+\.\w+", msg)]

end

function nice_to_meet_you(str)

    m = match(r"(\w+), (\w+)", str)

    "Nice to meet you, $(m[2]) $(m[1])"

end
