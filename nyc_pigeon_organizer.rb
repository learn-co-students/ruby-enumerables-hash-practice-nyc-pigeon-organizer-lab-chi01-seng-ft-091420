##require "pry"
def nyc_pigeon_organizer(data)
  output = data.each_with_object({}) do |(key, value), output|
  value.each do |inner_key, names|
    names.each do |name|
    if !output[name]
      output[name] = {}
    end
      if !output[name][key]
        output[name][key] = [ ]
      end 
      output[name][key].push(inner_key.to_s)
   end 
  end 
end 
##binding.pry
  # write your code here!
end
