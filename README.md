## 目次

- [目次](#目次)
  - [01. Hello, Ruby!](#01-hello-ruby)
  - [02. IRB での対話](#02-irb-での対話)
  - [03. 変数の再代入](#03-変数の再代入)
  - [04. 数値の基本操作](#04-数値の基本操作)
  - [05. 文字列操作](#05-文字列操作)
  - [06. シンボル](#06-シンボル)
  - [07. 真偽値と比較演算](#07-真偽値と比較演算)
  - [08. nil の扱い](#08-nil-の扱い)
  - [09. 配列の基本](#09-配列の基本)
  - [10. 配列の要素操作](#10-配列の要素操作)
  - [11. ハッシュ](#11-ハッシュ)
  - [12. if / unless](#12-if--unless)
  - [13. 三項演算子](#13-三項演算子)
  - [14. case 文](#14-case-文)
  - [15. each による繰り返し](#15-each-による繰り返し)
  - [16. while ループ](#16-while-ループ)
  - [17. next / break](#17-next--break)
  - [18. メソッド定義（引数なし）](#18-メソッド定義引数なし)
  - [19. メソッド定義（引数あり）](#19-メソッド定義引数あり)
  - [20. 複数引数のメソッド](#20-複数引数のメソッド)
  - [21. デフォルト引数](#21-デフォルト引数)
  - [22. キーワード引数](#22-キーワード引数)
  - [23. 可変長引数](#23-可変長引数)
  - [24. 例外処理](#24-例外処理)
  - [25. クラスとインスタンス変数](#25-クラスとインスタンス変数)
  - [26. initialize メソッド](#26-initialize-メソッド)
  - [27. attr\_accessor](#27-attr_accessor)
  - [28. クラス変数](#28-クラス変数)
  - [29. self の使用](#29-self-の使用)
  - [30. 定数](#30-定数)
  - [31. 継承](#31-継承)
  - [32. モジュールの include](#32-モジュールの-include)
  - [33. ネームスペース](#33-ネームスペース)
  - [34. map と select](#34-map-と-select)
  - [35. ソート](#35-ソート)
  - [36. include? と empty?](#36-include-と-empty)

---

### 01. Hello, Ruby!

**目的：** Ruby スクリプトを実行し、"Hello, Ruby!"を表示します。

```bash
ruby 01/hello.rb  # ファイルを実行するコマンド
```

```text
Hello, Ruby!      # スクリプトの出力
```

---

### 02. IRB での対話

**目的：** IRB（Interactive Ruby）を使い、対話的に Ruby コードを試し、動作を確認します。

```bash
irb               # IRBを起動
```

```ruby
puts "Hello"    # 標準出力に文字列を表示 => Hello
2 + 3            # 数値演算の結果を返す => 5

def hello        # メソッドhelloを定義
  puts "Hello"
end               # 定義完了を示すシンボル(:hello)を返す

hello            # メソッドを呼び出し => Hello
```

---

### 03. 変数の再代入

**目的：** 変数に値を代入・再代入し、その挙動を確認します。

```ruby
score = 80       # scoreに整数80を設定
puts score       # => 80

score = 95       # scoreの値を95に更新
puts score       # => 95

player_name = "Alice"  # 文字列を変数に代入
item1 = "Sword"
puts player_name + item1 # 文字列連結 => "AliceSword"
```

---

### 04. 数値の基本操作

**目的：** 整数・浮動小数点数の扱いや基本的な算術演算子を確認します。

```ruby
number = 42      # 整数
price = 12.345   # 浮動小数点数

number.class     # => Integer 型を確認
price.class      # => Float 型を確認

2 + 2            # 加算 => 4
2 - 1            # 減算 => 1
2 * 2            # 乗算 => 4
2 / 2            # 除算 => 1
10 % 3           # 余り => 1
5 / 2            # 整数同士の除算 => 2
5.0 / 2          # 浮動小数点同士の除算 => 2.5
```

---

### 05. 文字列操作

**目的：** 文字列の型、埋め込み、連結、分割、結合を学びます。

```ruby
# 型の確認と埋め込み
greeting = "Hello, Ruby!"    # 文字列
greeting.class                # => String を確認
language = "Ruby"
puts "私は#{language}を勉強しています"  # 文字列埋め込み

# 連結と破壊的変更
first = "Hello"
second = "Ruby"
first + " " + second        # 新しい文字列を返す => "Hello Ruby"
first << second               # firstにsecondを追記 => "HelloRuby"
puts first                    # => HelloRuby

# 分割と結合
colors = "red,blue,yellow".split(",")  # => ["red","blue","yellow"]
colors.join("-")                       # => "red-blue-yellow"
```

---

### 06. シンボル

**目的：** シンボルの特性とオブジェクト ID の違いを理解します。

```ruby
:test                  # シンボルリテラル => :test
test = :ruby           # シンボルを変数に代入
:test.class            # => Symbol 型を確認

# オブジェクトIDの比較
"ruby".object_id     # 各呼び出しで異なるID
"ruby".object_id
:ruby.object_id       # 同じID（シンボルは1つのみ生成）

# 状態管理に使う例
user_status = :active   # 状態をシンボルで表現
user_status = :inactive # 更新
```

---

### 07. 真偽値と比較演算

**目的：** 真偽値の型、比較演算子、論理演算子の結果を確認します。

```ruby
puts true            # => true
puts false           # => false
true.class           # => TrueClass
false.class          # => FalseClass

5 == 5               # 等価比較 => true
5 != 3               # 不等比較 => true
5 > 3                # 大小比較 => true
true && false        # 論理AND => false
true || false        # 論理OR => true
```

---

### 08. nil の扱い

**目的：** nil オブジェクトの挙動とチェック方法を理解します。

```ruby
puts nil              # => nil は何も表示しない
nil == nil            # => true （同一性）
nil == false          # => false
test = nil
puts test.nil?        # => true（nil判定）
```

---

### 09. 配列の基本

**目的：** 配列の定義、アクセス、長さ取得、範囲指定を学びます。

```ruby
numbers = [1, 2, 3, 4, 5]    # 整数の配列
fruits = ["りんご", "バナナ", "みかん"] # 文字列の配列
mixed = [1, "りんご"]       # 異種要素の配列

fruits[0]    # => "りんご"（最初の要素）
fruits[-1]   # => "みかん"（最後の要素）
fruits.length# => 3（要素数）
numbers[0..2]# => [1, 2, 3]（範囲指定）
```

---

### 10. 配列の要素操作

**目的：** 配列への要素追加・削除・取得方法を確認します。

```ruby
fruits = ["りんご", "バナナ"]
fruits.push("みかん")    # => ["りんご","バナナ","みかん"]
fruits.pop               # => "みかん"（末尾を削除）
fruits.unshift("ぶどう")# => ["ぶどう","りんご","バナナ"]（先頭追加）
fruits.shift             # => "ぶどう"（先頭を削除）
fruits.delete("バナナ") # => "バナナ"（指定値を削除）
```

---

### 11. ハッシュ

**目的：** ハッシュ（連想配列）の定義、キーによる参照・更新を学びます。

```ruby
person = { name: "太朗", age: 20 }  # シンボルキーのハッシュ
e mpty = {}
empty[:name] = "太朗"               # 空ハッシュにキー・値を追加

puts person[:name]  # => "太朗"
puts person[:age]   # => 20
```

---

### 12. if / unless

**目的：** 条件分岐（if/unless）の書き方と使い分けを学びます。

```ruby
score = 85
puts "合格" if score >= 80   # 単一条件

if score >= 80\puts "優秀"
elsif score >= 70
  puts "良い"
else
  puts "その他"
end

unless score >= 60
  puts "不合格"             # 条件が偽の場合に実行
end
```

---

### 13. 三項演算子

**目的：** 三項演算子で簡潔に条件分岐を表現します。

```ruby
score = 80
esult = score >= 70 ? "合格" : "不合格"
puts result       # => "合格"
```

---

### 14. case 文

**目的：** 複数条件をまとめて分岐する case 文を学びます。

```ruby
month = 7
case month
when 3,4,5 then puts "春"
when 6,7,8 then puts "夏"
when 9,10,11 then puts "秋"
else puts "冬"
end

score = 85
case score
when 90..100 then puts "A評価"
when 80..89  then puts "B評価"
else puts "D評価"
end
```

---

### 15. each による繰り返し

**目的：** each メソッドで配列をループ処理します。

```ruby
[1,2,3].each do |n|
  puts n   # 要素を順に表示
end

%w[コーヒー 紅茶].each.with_index(1) do |drink, i|
  puts "#{i}番目: #{drink}"
end
```

---

### 16. while ループ

**目的：** while ループで条件満たす限り繰り返します。

```ruby
count = 1
while count <= 3
  puts "#{count}回目の実行"
  count += 1
end
```

---

### 17. next / break

**目的：** ループ内の処理をスキップ(next)・終了(break)します。

```ruby
[1,2,3,4,5].each do |n|
  next if n == 2   # 2のときだけ処理をスキップ
  break if n == 4  # 4のときループを終了
  puts n           # => 1,3
end
```

---

### 18. メソッド定義（引数なし）

**目的：** 引数なしメソッドの定義と呼び出しを学びます。

```ruby
def calculate_sum
  2 + 3   # 戻り値として合計を返す
end
puts calculate_sum   # => 5
```

---

### 19. メソッド定義（引数あり）

**目的：** 引数付きメソッドで動的に処理を行います。

```ruby
def greet(name)
  puts "こんにちは、#{name}さん"
end
greet("山田")   # => こんにちは、山田さん
```

---

### 20. 複数引数のメソッド

**目的：** 複数の引数を受け取り、計算などを行います。

```ruby
def add(a, b)
  a + b   # 引数同士を加算して返す
end
puts add(5, 3)   # => 8
```

---

### 21. デフォルト引数

**目的：** 引数にデフォルト値を設定し、呼び出しの柔軟性を高めます。

```ruby
def greet(name = "ゲスト", message = "ようこそ")
  puts "こんにちは、#{name}さん"
  puts message
end
greet("佐藤")  # 引数1つ指定
greet           # デフォルト値使用
```

---

### 22. キーワード引数

**目的：** キーワード引数で可読性の高い呼び出しを実現します。

```ruby
def print_info(name:, age:)
  puts "#{name}さんは#{age}歳です"
end
print_info(name: "田中", age: 30)
```

---

### 23. 可変長引数

**目的：** 可変長引数で任意個の引数を受け取ります。

```ruby
def sum(*numbers)
  numbers.sum   # 配列として受け取り合計
end
puts sum(1,2,3,4)  # => 10
```

---

### 24. 例外処理

**目的：** begin/rescue や簡易構文で例外を捕捉し安全に処理します。

```ruby
def divide(a, b)
  a / b
rescue ZeroDivisionError
  puts "0で除算できません"
end
puts divide(10, 0)
```

---

### 25. クラスとインスタンス変数

**目的：** クラス定義とインスタンス変数(@変数)の利用を学びます。

```ruby
class Dog
  def set_name(name)
    @name = name  # インスタンス変数に値を保持
  end

  def bark
    puts "#{@name}: わんわん!"
  end
end

dog = Dog.new
dog.set_name("ポチ")
dog.bark   # => ポチ: わんわん!
```

---

### 26. initialize メソッド

**目的：** オブジェクト生成時に初期化処理を行います。

```ruby
class Character
  def initialize(name:, hp: 100)
    @name = name
    @hp = hp
    puts "キャラクター#{@name}を作成しました"
  end
end

hero = Character.new(name: "勇者", hp: 200)
```

---

### 27. attr_accessor

**目的：** アクセサメソッドを自動生成し、属性の読み書きを簡潔にします。

```ruby
class Character
  attr_accessor :name, :hp
end

c = Character.new(name: "太郎", hp: 100)
puts c.name  # 読み取り
c.hp = 150   # 書き込み
```

---

### 28. クラス変数

**目的：** クラス全体で共有される変数(@@変数)を扱います。

```ruby
class Counter
  @@count = 0

  def increment
    @@count += 1
  end

  def self.count
    @@count
  end
end

c1 = Counter.new
c1.increment
c2 = Counter.new
c2.increment
puts Counter.count   # => 2
```

---

### 29. self の使用

**目的：** インスタンス/self、クラスメソッドでの self の意味を理解します。

```ruby
class User
  attr_accessor :name

  def initialize(name)
    self.name = name   # setterを呼び出す
  end

  def greet
    puts "こんにちは、#{self.name}さん"  # selfでインスタンスメソッドを明示
  end
end

u = User.new("山田")
u.greet   # => こんにちは、山田さん
```

---

### 30. 定数

**目的：** 定数の定義と再代入時の警告/エラーを確認します。

```ruby
class Product
  TAX_RATE = 0.1    # 定数定義
end

puts Product::TAX_RATE
Product::TAX_RATE = 0.2  # 警告が出る
```

---

### 31. 継承

**目的：** 継承で親クラスの機能を再利用・拡張します。

```ruby
class Animal
  def speak
    puts "鳴き声"
  end
end

class Dog < Animal
  def speak
    puts "ワン!"
  end
end

d = Dog.new
d.speak   # => ワン!
```

---

### 32. モジュールの include

**目的：** モジュールを mix-in して機能を共有します。

```ruby
module Walkable
  def walk
    puts "歩いています"
  end
end

class Dog
  include Walkable
end

d = Dog.new
d.walk  # => 歩いています
```

---

### 33. ネームスペース

**目的：** モジュールを使ってクラスを整理し名前衝突を防ぎます。

```ruby
module Zoo
  class Animal
    def speak
      puts "動物園の動物が鳴いています"
    end
  end
end

Zoo::Animal.new.speak
```

---

### 34. map と select

**目的：** 高階メソッドで配列を変換・抽出します。

```ruby
nums = [1,2,3,4]
doubled = nums.map { |n| n * 2 }        # => [2,4,6,8]
evens  = nums.select(&:even?)           # => [2,4]
```

---

### 35. ソート

**目的：** sort, sort_by で並び替えを行います。

```ruby
nums = [3,1,2]
puts nums.sort    # => [1,2,3]

students = [{name: "A", score: 80}, {name: "B", score: 90}]
puts students.sort_by { |s| s[:score] }  # スコア順
```

---

### 36. include? と empty?

**目的：** 要素の存在確認・空配列チェックを行います。

```ruby
puts [1,2,3].include?(2)  # => true
puts [].empty?            # => true
```
