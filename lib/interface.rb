require "json"
require_relative "scraper"


field_chapter_value = 1
field_nsutra_value = 1
shlok_array = []
filepath = "shloks18.json"

for field_chapter_value in 13..18
  for field_nsutra_value in 66..78
    url = "https://www.gitasupersite.iitk.ac.in/srimad?language=dv&field_chapter_value=#{field_chapter_value}&field_nsutra_value=#{field_nsutra_value}&htrskd=1&httyn=1&htshg=1&hcchi=1&hcrskd=1&ecsiva=1&etsiva=1&etpurohit=1&etgb=1&setgb=1&etssa=1&etassa=1&etradi=1&etadi=1"
    shlok = scrape(url)
    shlok_array << shlok
  end
end

shloks = { shloks: shlok_array}

File.open(filepath, "a") do |file|
  file.write(JSON.generate(shloks))
end
puts "Done."
