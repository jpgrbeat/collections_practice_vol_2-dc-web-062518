# your code goes here
require 'pry'
def begins_with_r(arr)
 new = arr.select{|word| word[0].downcase=='r'}
 if new.length == arr.length
   return true
 else
   return false
 end
end

def contain_a(arr)
  i = 0
  new = []
  while i < arr.length
    a = arr[i].split("")
    if a.include?("a")
      new.push(arr[i])
    end
    i += 1
  end
  new
end

def first_wa(arr)
   string = arr.find{|word| (word[0]+word[1]) == "wa"}
   string
end

def remove_non_strings(arr)
  # 
  arr.delete_if{|el| !el.is_a? String}
end

def count_elements(arr)
  new_arr =[]
  arr.each do |hash|
    if !new_arr.any?{|h| hash[:name] == h[:name]}
      new_arr.push({ name: hash[:name], count: 1})
    else
      val = new_arr.find{|h| hash[:name] == h[:name]}
      val[:count] += 1
    end
    
  end
  #arr.map{|el| self.include?el[:name] ? count += 1 : {:name => el[:name], :count => count}}
  # #count_arr =[]
  # arr.each do |el|
  #     #count = arr.count{|x| x == el}
  #       count += 1
  #     count_arr.push({:name => el[:name],:count => count})
  new_arr
end
def merge_data(d1,d2)
  blake = d1[0].merge(d2[0]["blake"])
  ashley = d1[1].merge(d2[0]["ashley"])
  arr = [blake,ashley]
  arr
end

def find_cool(arr)
  arr.each do |hash|
    hash.each do |key, value|
      if value == 'cool'
        return [hash]
      end
    end
  end
end

def organize_schools(schools)
  # let(:schools) {
  #   {
  #     "flatiron school bk" => {
  #       :location => "NYC"
  #     },
  #     "flatiron school" => {
  #       :location => "NYC"
  #     },
  #     "dev boot camp" => {
  #       :location => "SF"
  #     },
  #     "dev boot camp chicago" => {
  #       :location => "Chicago"
  #     },
  #     "general assembly" => {
  #       :location => "NYC"
  #     },
  #     "Hack Reactor" => {
  #       :location => "SF"
  #     }
  #   }
  # }
  
    keys = schools.keys
    nyc = []
    sf = []
    chicago = []
    keys.each do |key|
     place = schools[key][:location]
     if place == "NYC"
       nyc.push(key)
    elsif place == "SF"
       sf.push(key)
    else
      chicago.push(key)
    end
    end
    new_hash = {"NYC" => nyc, "SF" => sf, "Chicago" => chicago}
    new_hash
end
