require 'pry'
def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), fin_array|
    value.each do |next_key, next_value|
      next_value.each do |name|
        if !fin_array.has_key? name
          fin_array[name] = {}
        end
        if !fin_array[name].has_key? key
          fin_array[name][key] = []
        end
        fin_array[name][key].push(next_key.to_s)
      end
    end
  end
end

puts nyc_pigeon_organizer(pigeon_data = {
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
    })