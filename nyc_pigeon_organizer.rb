require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here
  results = data.each_with_object({}) do |(k, v), final_array| 
    v.each do |inner_key, names|
      names.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][k]
          final_array[name][k] = []
        end
        final_array[name][k].push(inner_key.to_s)
    end
    end
  end
   # binding.pry
end
