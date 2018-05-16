require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |season_list,data_array|
    if season_list == season
      return data_array[0]["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_list,data_array|
    data_array.each do |data_objects|
      if data_objects["occupation"] == occupation
        return data_objects["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  total = 0
  data.each do |season_list,data_array|
    data_array.each do |data_objects|
      if data_objects["hometown"] == hometown
        total += 1
      end
    end
  end
    total
end

def get_occupation(data, hometown)
  data.each do |season_list,data_array|
    data_array.each do |data_objects|
      if data_objects["hometown"] == hometown
        return data_objects["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
   count_array = []
  data.each do |season_list,data_array|
    if season_list == season
      data_array.each do |data_objects|
        count_array << data_objects["age"]
      end
    end
  end
  new_array = count_array.collect{|number| number.to_f}
  total = new_array.inject{|x,element| x + element}
  average = total/new_array.length
  return average.round
end
