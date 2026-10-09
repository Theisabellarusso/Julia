using Dates: Date, DateTime, DateFormat, hour, today, year, now

function schedule_appointment(appointment::String)

    df = DateFormat("m/d/y H:M:S")

    DateTime(appointment, df)
    
end

function has_passed(appointment::DateTime)

   appointment < now()

end

function is_afternoon_appointment(appointment::DateTime)

    ho = hour(appointment)

    ho >= 12 && ho < 18
    
end

function describe(appointment::DateTime)

    day = Dates.format(appointment, dateformat"EEEE, U d, yyyy")

    time = Dates.format(appointment, dateformat"HH:MM")

    "You have an appointment on $day at $time"

end

function anniversary_date()

    Date(year(today()), 9, 15)
    
end
