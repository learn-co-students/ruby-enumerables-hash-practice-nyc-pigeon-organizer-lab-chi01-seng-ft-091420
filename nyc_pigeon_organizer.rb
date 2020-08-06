require 'pry'

def nyc_pigeon_organizer(data)
 output = data.each_with_object({}) do |(key,val), output|
   #binding.pry
    val.each do |inner_key,names|
      #binding.pry
      names.each do |name|
        #binding.pry
        if !output[name]
        output[name] = {}
        #binding.pry
        end
        if !output[name][key]
        output[name][key] = []
        end
        output[name][key].push(inner_key.to_s)
      end
    end
    output
  end
   #binding.pry
end
