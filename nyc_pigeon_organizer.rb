require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute_name, attributes|
    attributes.each do |attribute_value, pigeon_names|
      pigeon_names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute_name] ||= []
        pigeon_list[name][attribute_name].push(attribute_value.to_s)
      end
    end 
  end

  pigeon_list
end


# def nyc_pigeon_organizer(data)
#   new_hash = {}
#   data.each do |key, value|
#     value.each do |new_value, names|
#       names.each do |name|
        
#         if !new_hash[name]
#           new_hash[name] = {}
#         end

#         if !new_hash[name][key]
#           new_hash[name][key] = []
#         end

#         new_hash[name][key] << new_value.to_s

#       end
#     end
#   end
#   new_hash
# end


# def nyc_pigeon_organizer(data)
#   pigeon_list = {}
#   data.each do |color_gender_lives, values|
#     values.each do |stats, names|
#       names.each do |name|
#       if pigeon_list[name] == nil
#           pigeon_list[name] = {}
#       end
#       if pigeon_list[name][color_gender_lives] == nil
#         pigeon_list[name][color_gender_lives] = []
#     end
#     pigeon_list[name][color_gender_lives].push(stats.to_s)
#   end
#   end
# end
# pigeon_list
# end






pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)