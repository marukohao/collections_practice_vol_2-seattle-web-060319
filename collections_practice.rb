# your code goes here
def begins_with_r(array)
  array.all? {|word| word[0] =="r"}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word[0..1] == "wa"}
end

def remove_non_strings(array)
  array.select {|word| word === word.to_s}
end

def count_elements(array)
  new_arr = []
  hash = Hash.new(0)
  array.each {|word| hash[word] += 1 }
  hash.each do |key, value|
    key[:count] = value
    new_arr << key
  end
  new_arr
end

def merge_data(data, keys)
  new_arr = []
  data[0].each do |name, data1|
    keys.each do |hash|
      if hash[:first_name] == name
        data1.each do |key, value|
          hash[key] = value
        end
        new_arr << hash
      end
    end
  end
  new_arr
end

def find_cool(cool)
  new_hash = [] 
  cool.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        new_hash << hash
      end
    end
  end
  new_hash
end

def organize_schools(school)
  hash = {}
  nyc = []
  sf = []
  chicago = []
  school.each do |schools, loca|
    loca.each do |key, city|
      if city == "NYC"
        nyc << schools
      end
    end
  end
  
  school.each do |schools, loca|
    loca.each do |key, city|
      if city == "SF"
        sf << schools
      end
    end
  end
  
  school.each do |schools, loca|
    loca.each do |key, city|
      if city == "Chicago"
        chicago << schools
      end
    end
  end
  hash["NYC"] = nyc
  hash["SF"] = sf
  hash["Chicago"] = chicago
  hash
end