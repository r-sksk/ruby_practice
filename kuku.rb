def openFile
    file = File.open("./answer.txt", "w")
    return file
end

def closeFile(file)
    file.close
end

#九九表作成
def calcNineByNine(min=1, max=9)
    file       = openFile()
    nums_range = min..max

    nums_range.each do |num1|
        sv_row = ''
        nums_range.each do |num2|
            sv_row << "#{num1} * #{num2} = #{num1 * num2} "
        end
        file.puts(sv_row)
    end
    closeFile(file)
end

calcNineByNine(1,9)