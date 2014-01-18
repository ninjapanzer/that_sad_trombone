#   01012000


a = '01012014'
current_year = 2014
year = a[-4,4].to_i

if (current_year - year) >= 10
  puts "10 or more"
else
  puts "(sadtrombone)"
end