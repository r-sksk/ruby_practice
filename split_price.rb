#値札分割メソッド作成
def split_price(price_text)
    s = /^(.*?)(万?円|)$/.match(price_text.to_s)
    [s[1],s[2]]
end

def openFile
  file = File.open("./answer5.txt", "w")
  return file
end
    
def closeFile(file)
  file.close
end

file = openFile()
price_text = '2015円'
output = split_price(price_text)
file.puts output
closeFile(file)
