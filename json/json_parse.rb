require 'json'

file = File.read('json_example.json')

parsed_json_to_hash = JSON.parse(file)

#puts parsed_json_to_hash["date"]

def iterate_hash(hash, index)
    hash.each do |k, v|
        if v.kind_of?(Array)
            puts k, v[index]
        else
            puts k, v
        end
    end
end

parsed_json_to_hash.each do |key, value|
    puts key
    if value.kind_of?(Hash)
        iterate_hash(value, 0)   
    else
        puts(value)
    end
end

