class Counter
  @@count = 0

  def self.count
    @@count
  end

  def increment
    @@count += 1
  end
end

counter1 = Counter.new
counter2 = Counter.new

counter1.increment

puts Counter.count

counter2.increment

puts Counter.count



class Configuration
  @@settings = {}

  def self.set(key, value)
    @@settings[key] = value
  end

  def self.get(key)
    @@setting[key]
  end

  def send_mail
    # メール送信処理

    # 失敗した場合には、retry_countを1増やす
    # 最大リトライ回数に達したら処理を諦める
  end
end

Configuration.set(:max_retry, 3) # 最大リトライ回数
Configuration.set(:retry_count, 0) # 
