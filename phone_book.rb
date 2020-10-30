#電話帳作成
def openFile
    file = File.open("./answer3.txt", "w")
    return file
end

def closeFile(file)
    file.close
end

def name_format(names)
    katakana = [[*"ア".."オ"]<<"ヴ",[*"カ".."ゴ"],[*"サ".."ゾ"],[*"タ".."ド"],[*"ナ".."ノ"],[*"ハ".."ポ"],[*"マ".."モ"],[*"ヤ".."ヨ"],[*"ラ".."ロ"],[*"ワ".."ン"]]

    
names.sort!
index = []
katakana.each do |gyou|
    names.each do |name|
        if gyou.include?(name[0])
            if index.empty? || index[-1][0] != gyou[0]
                index << [gyou[0],[]]
            end
            index[-1][1] << name
        end
    end
end
return index 

end

names = ["キシモト","イトウ","ババ","カネダ","ワダ","ハマダ","ゴンダ","ドウモト","ヴィクトル",]
telnames = name_format(names)

file = openFile()
file.print telnames
closeFile(file)
