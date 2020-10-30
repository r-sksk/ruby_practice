def openFile
    file = File.open("./answer2.txt", "w")
    return file
end

def closeFile(file)
    file.close
end

require "date"
file = openFile()
index = Date.today.strftime("%Y,%m")
year = Date.today.year
mon = Date.today.mon

startday_wday = Date.new(year,mon,1).wday
lastday_date = Date.new(year,mon,-1).day
week = ["日","月","火","水","木","金","土"]

file.puts index 
file.puts week.join(" ")
file.print "   " * startday_wday

wday = startday_wday
(1..lastday_date).each do |date|
  file.print date.to_s.rjust(2) + " "
  wday += 1
   if wday%7 == 0
     file.print "\n"
   end
end

if wday%7 != 0
  print "\n"
end

closeFile(file)




