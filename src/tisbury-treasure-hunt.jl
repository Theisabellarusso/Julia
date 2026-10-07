function get_coordinate(line)

    return line[2]

end

function convert_coordinate(coordinate)

    return Tuple(coordinate)

end

function compare_records(azara_record, rui_record)

    return convert_coordinate(azara_record[2]) == rui_record[2]

end

function create_record(azara_record, rui_record)

    return if compare_records(azara_record, rui_record)

        (azara_record[2], rui_record[1], rui_record[3], azara_record[1])

    else

        ()

    end

end
