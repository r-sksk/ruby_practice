#表の行・列の合計値出力
class Matrix_total_system
    def execute
      matrix = calculate_matrix_total(gets.to_i)
    end

    def calculate_matrix_total(n)
      return "" if n==0
      ans_matrix = ""
      rows = n.times.map{gets.split.map(&:to_i)} 
      rows.each do |row|
        ans_matrix += (row << row.sum).map{|i| "%5d" % i}.join + "\n"
      end
      column_sums = n.times.map{|i| rows.inject(0){|column_sum,row| column_sum + row[i]}}
      ans_matrix += (column_sums << column_sums.sum).map{|i| "%5d % i}.join + "\n" + calculate_matrix_total(gets.to_i)}
    end
end
    

    def openFile
        file = File.open("./answer4.txt", "w")
        return file
    end
    
    def closeFile(file)
        file.close
    end

mlc = Matrix_total_system.new
file = openFile()
file.puts mls.execute
closeFile(file)


