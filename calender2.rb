require "date"
​
class Calender
    def initialize(year=0)
        today  = Date.today
        @year  = year == 0 ? today.year : year
    end
​
    def create_matrix(month=1)
        cal_header_ym    = [' ', ' ', ' ', "#{@year}年#{month}月", ' ', ' ', ' ']
        cal_header_weeks = ['日', '月', '火', '水', '木', '金', '土']
        last_of_month    = Date.new(@year, month, -1).day
        week_of_firstday = Date.new(@year, month,  1).wday
​
        month_matrix = [
            cal_header_ym,
            cal_header_weeks
        ]
​
        row = Array.new(7, '  ')
        (1..last_of_month).each do |day|
            week = week_of_firstday % 7
​
            if week == 0
                month_matrix.push(row)
                row = Array.new(7, '  ')
            end
            row[week] = sprintf("%2d", day)
            week_of_firstday += 1
        end
        month_matrix.push(row)
​
        return month_matrix
    end
​
    def self.output_calnder(cal)
        openfile
        cal.each do |c|
            @file.puts c.join(" ") + '  ' + c.join(" ") + '  ' + c.join(" ")
        end
        @file.puts
        cal.each do |c|
            @file.puts c.join(" ") + '  ' + c.join(" ") + '  ' + c.join(" ")
        end
        @file.puts
        cal.each do |c|
            @file.puts c.join(" ") + '  ' + c.join(" ") + '  ' + c.join(" ")
        end
        @file.puts
        cal.each do |c|
            @file.puts c.join(" ") + '  ' + c.join(" ") + '  ' + c.join(" ")
        end
        closefile
    end
​
    private
​
    def self.openfile
        @file = File.open("./calender.txt", "w")
    end
​
    def self.closefile
        @file.close
    end
end
​
cal_2020     = Calender.new()
cal_jan_2020 = cal_2020.create_matrix(2)
Calender.output_calnder(cal_jan_2020)
Collapse