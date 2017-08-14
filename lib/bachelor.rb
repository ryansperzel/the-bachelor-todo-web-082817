def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person_stats|
      if person_stats["status"].downcase == "winner"
        return person_stats["name"].split(" ").first
      end
    end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |person_stats|
      if person_stats["occupation"] == occupation
        return person_stats["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestants|
    contestants.each do |person_stats|
      if person_stats["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |person_stats|
      if person_stats["hometown"] == hometown
        return person_stats["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
    contestants = 0
    data[season].each do |person_stats|
      age += (person_stats["age"]).to_i
      contestants += 1
    end
    (age / contestants.to_f).round(0)
  end
