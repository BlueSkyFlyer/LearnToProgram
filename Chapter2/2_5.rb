puts "Hours in a year:"
days_in_year = 365
hours_in_day = 24
puts days_in_year*hours_in_day

puts "Minutes in a decade"
min_in_hour = 60
puts days_in_year*hours_in_day*min_in_hour*10

puts "Seconds in 23 years"
sec_in_min = 60
puts days_in_year*hours_in_day*min_in_hour*sec_in_min*23

puts "Author's age in years"
puts 1160000000/(sec_in_min*min_in_hour*hours_in_day*days_in_year)