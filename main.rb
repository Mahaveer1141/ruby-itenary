location_verb = %w[arrive explore drive going stay]
# locations = [:jaipur, :jodhpur, :ajmer, :udaipur]

# attractions = ['Amber Fort', 'City Palace', 'Jantar Mantar', 'Hawa Mahal', 'Jal Mahal', 'Birla Temple','Mehrangarh Fort']
attractions_verb = %w[explore visit including]

seprators = ['in', 'to', 'back', 'back to', 'and', ',', 'the']

sentence = gets.chomp

data = sentence.split

index_till_city = 0

(0...data.size).each do |i|
  next unless location_verb.include? data[i].downcase

  i += 1
  i += 1 while seprators.include? data[i].downcase
  puts data[i]
  index_till_city = i
  break
end

(index_till_city...data.size).each do |i|
  next unless attractions_verb.include? data[i].downcase

  i += 1
  i += 1 while seprators.include? data[i].downcase

  while i < data.size
    place = ''
    while i < data.size
      break if seprators.include? data[i]

      place += data[i] + ' '
      break if data[i][-1] == ','

      i += 1
    end
    puts "place: #{place}"
    i += 1
  end
end
