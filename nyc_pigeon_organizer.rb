def nyc_pigeon_organizer(data)
  name_array = []
  count = 0
  data[:gender][:male].each do |index|
    name_array[count] = index
    count += 1
  end
  data[:gender][:female].each do |index|
    name_array[count] = index
    count += 1
  end
  data_hash = Hash.new
  name_array.each do |index|
    data_hash[index] = {:gender => [], :lives => [], :color => []}
  end
  

    data[:color].each do |index|
       index.each do |index2|
         if index2.class != Symbol
           index2.each do |color|
             
             data_hash[color][:color].push(index[0].to_s)
             
           end
         end
       end
    end
   data[:gender].each do |index|
       index.each do |index2|
         if index2.class != Symbol
           index2.each do |color|
             
             data_hash[color][:gender].push(index[0].to_s)
             
           end
         end
       end
    end
    
    
    data[:lives].each do |index|
       index.each do |index2|
         if index2 != index[0]
           index2.each do |color|
             
             data_hash[color][:lives].push(index[0].to_s)
             
           end
         end
       end
    end
      
  
  
  
  
  
  puts data_hash
  data_hash
end