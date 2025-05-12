class Product
  TAX_RATE = 0.1

  def total_price(price)
    price * (1 + TAX_RATE)
  end
end

product = Product.new
puts product.total_price(1000)


class Settings
  DEFAULT_TIMEOUT = 30
end

puts Settings::DEFAULT_TIMEOUT

Settings::DEFAULT_TIMEOUT = 60

puts Settings::DEFAULT_TIMEOUT


class Configuration
  SETTINGS = {
    timeout: 90,
    retries: 3
  }.freeze
end

puts Configuration::SETTINGS[:timeout]

Configuration::SETTINGS[:timeout] = 120
puts Configuration::SETTINGS[:timeout]
