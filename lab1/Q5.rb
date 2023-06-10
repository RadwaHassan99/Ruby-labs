def leap_year?(year)
    if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
      return true
    else
      return false
    end
  end
  
  # Example usage:
  years = [2012, 1500, 1600, 2020]
  years.each do |year|
    if leap_year?(year)
      puts "#{year} is a leap year"
    else
      puts "#{year} is not a leap year"
    end
  end
  