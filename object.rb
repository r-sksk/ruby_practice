#オブジェクト指向学習用

# これはわれらの住む惑星「チキュウ」がまだ誕生したばかりの頃のお話です。
# ある日宇宙をさまよっていた神様は、超絶暇だったので新たに惑星を作ろうと考えました。
# 神様は自分が作りたいと思った「もの」は、なんでも思い通りに作ることができるのでした。
# この時神様は、「久しぶりに自然豊かで生命が満ち溢れた惑星を作りたいなぁ」と考えを巡らせていました。
# なぜ、そのような惑星を作りたいと思ったのでしょうか。
# かつて神様が同じような惑星を作った時に、その惑星の生命から多大なる感謝の念をもらったことで、神様自身がとても幸せになった経験がありました。
# 神様はあの時の感情をもう一度味わいたいと強く思っていました。「あの時と全く同じ惑星を作りたい！」と。。。
# ただ、これまで神様は何億、何兆とさまざまな「もの」を作ってきたこともあり、あの時作った惑星の詳細を思い出せずにいました。
# 神様は「そういうこともあるさ」と前を向き、新たな惑星の詳細をしかっりメモ書き（設計書）として残しつつ、惑星の創生に取り組むのでした。。。
​
​
# 神様もっていた惑星の作り方のメモ書き
# ===============================
# 惑星の設計図（Company Class）
# ===============================
class Planet
    # どの惑星でも共通している内容（クラス変数 @@で変数名を始める）
    @@moving    = '恒星の周りを回っている'
    @@shape     = '球体である'
    @@fixedStar = 'この場合の恒星は太陽である'
​
​
    # 惑星の特徴を決めて上げるための手順（インスタンス生成時に初期化するためのメソッドを「コンストラクタ」という）
    def initialize(name, age, human)
        # これは神様が作る惑星（インスタンス：実体）によって異なってくる情報（インスタンス変数）
        @name  = name
        @age   = age
        # humanにはTrueかFalseが代入される。生命がいるかいないかみたいな。いればTrueにしてみた
        @human = human
    end
​
    # 惑星()に年を取らせるための手順
    def addAge
        @age = @age + 1
    end
​
    def getInfoPlanet
        aboutPlanet = '惑星とは、、、'
        puts
        puts aboutPlanet + @@moving     # 文字列結合
        puts "#{aboutPlanet}#{@@shape}" # 変数展開
        puts aboutPlanet + @@fixedStar # puts関数は改行される / print関数は改行されない
    end
end
# ===============================
​
​
# ===============================
# 惑星(チキュウ)の設計図（Company Class）
# ===============================
class Earth < Planet
​
# ===============================
# チキュウの設計図は、惑星の設計図を基にして作っている（継承している）ので下記のようなイメージ。実際には見えないけどEarthクラスに入り込んできているイメージですかな
# ===============================
    # どの惑星でも共通している内容（クラス変数 @@で変数名を始める）
    # @@moving    = '恒星の周りを回っている'
    # @@shape     = '球体である'
    # @@fixedStar = 'この場合の恒星は太陽である'
​
​
    # # 惑星の特徴を決めて上げるための手順
    # def initialize(name, age, human)
    #     # これは神様が作る惑星（インスタンス：実体）によって異なってくる情報（インスタンス変数）
    #     @name  = name
    #     @age   = age
    #     # humanにはTrueかFalseが代入される。生命がいるかいないかみたいな。いればTrueかな？
    #     @human = human
    # end
​
    # # 惑星()に年を取らせるための手順
    # def addAge
    #     @age = @age + 1
    # end
​
    # def getInfoPlanet
    #     aboutPlanet = '惑星とは、、、'
    #     puts
    #     puts aboutPlanet + @@moving     # 文字列結合
    #     puts "#{aboutPlanet}#{@@shape}" # 変数展開
    #     puts aboutPlanet + @@fixedStar # puts関数は改行される / print関数は改行されない
    # end
# ===============================
​
    # チキュウの詳細情報を教えてもらう手順(このメソッドは、Earthクラスから生成されたインスタンスのみ、アクセスできる)
    def getInfoEarth
        puts
        puts "============#{self.class.name}クラス============" #selfは自分自身のクラス名をさす（この場合はEarth）
        aboutEarth = 'この惑星は'
        puts "#{aboutEarth}#{@name}らしいです"
        # puts aboutEarth + @age + '歳です'      # これはエラーとなる　@ageがinteger型なのでString型に変換する必要がある
        # puts aboutEarth + @age.to_s + '歳です' # これでOk　（to_sが変換する関数？らしい）
        # （余談）ほかのどの言語にも型に関するエラーはあるし、バグの温床となることが多い。JavaScriptやるなら型がしっかりしているtypescriptおすすめ
        puts "#{aboutEarth}#{@age.to_s}歳です"   # 変数展開ならInteger型とか考えなくていいので楽
​
        # 単純なIF文
        if @human
            puts aboutEarth + '生命がいる(IF文)'
        else
            puts aboutEarth + '生命がいない(IF文)'
        end
​
        # 三項演算子（上のIF文と同じ結果になる）
        puts @human ? aboutEarth + '生命がいる(三項演算子)' : aboutEarth + '生命がいない(三項演算子)'
    end
​
    # このメソッドは基となった惑星の設計書（Planet）にすでにあるメソッドざんす
    # 親クラス（基底クラス・スーパークラス）のメソッドを子クラス（派生クラス・継承クラス・サブクラス）が再定義することを「オーバーライド」という
    # こうすることで親クラスのgetInfoPlanetをいじることなく、Earthクラス仕様にカスタマイズすることができる
    def getInfoPlanet
        super #super が親クスラスの処理を実行する関数？？↓↓
        # def getInfoPlanet
            #     aboutPlanet = '惑星とは、、、'
            #     puts
            #     puts aboutPlanet + @@moving     # 文字列結合
            #     puts "#{aboutPlanet}#{@@shape}" # 変数展開
            #     puts aboutPlanet + @@fixedStar # puts関数は改行される / print関数は改行されない
        # end
        puts "#{self.class.name}クラスがオーバーライドしてやったぜ"
    end
​
    attr_reader   :name	# 参照を可能にする。（「ゲッター」と同じ役割）
    attr_writer   :name	# 更新を可能にする。（「セッター」と同じ役割）
    attr_accessor :name # 参照・更新を可能にする。
end
# ===============================
​
# 神様はもともと持っていた惑星の設計書を基にチキュウを作ってみました。
# 紙というペラペラの設計図から実際に「モノ：チキュウ」を生成して、いのちを吹き込むのじゃ
# RubyではnewするとClass内のinitializeメソッドが呼ばれるらしい（class内に定義されていればの話だけど）
newPlanet = Earth.new(name = 'チキュウ', age = 0, human = true)
# 惑星の情報を取得してみる
newPlanet.getInfoPlanet
# チキュウの情報を取得してみる
newPlanet.getInfoEarth
# 惑星に年を取らせてみる
newPlanet.addAge
# ageが年を取ったか確認してみ
newPlanet.getInfoEarth
​
​
# 神様がいたずらでもう一つ「恥丘（チキュウ）」なるものを作ってしまた
otherPlanet = Earth.new(name = '恥丘', age = 999, human = false)
# 惑星の情報を取得してみる
otherPlanet.getInfoPlanet #これはチキュウインスタンスと同じ情報のはず
# 恥丘の情報を取得してみる
otherPlanet.getInfoEarth #これはチキュウインスタンスとは異なる情報のはず
​
​
# ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝カプセル化について＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
​
# ふつうは直接インスタンス変数を参照することはできない（カプセル化されているため）
    # puts otherPlanet.age  #これはエラーになる
# カプセル化とは、オブジェクト（インスタンス：実体）の詳細をユーザ（プログラムを使う人）から隠蔽し見えなくすること。オブジェクトの内部データ構造やメソッドの実装を変更しても、その影響をほかのオブジェクトに及ぼしにくくなる
​
# 上の例でインスタンス変数を参照できていたのは、getInfoEarthのような「ゲッター」メソッドを介していたから
# 上の例でインスタンス変数に代入できていたのは、initializeのような　「セッター」メソッドを介していたから
​
# 直接インスタンス変数を参照するにはEarthクラスに「attr_accessor :name」を記載する
puts otherPlanet.name