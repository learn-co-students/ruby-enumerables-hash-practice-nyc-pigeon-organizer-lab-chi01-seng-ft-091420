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

def nyc_pigeon_organizer(data)
  # write your code here!
  new_data = {}
  data.each {|quality, value|
    data[quality.to_sym].each {|quality_value, namearray|
      namearray.each {|name|
        new_data[name] ||= {}
        (new_data[name][quality.to_sym] ||= []).push(quality_value.to_s)
      }
    }
  }
  puts new_data
  new_data
end

nyc_pigeon_organizer(pigeon_data)
