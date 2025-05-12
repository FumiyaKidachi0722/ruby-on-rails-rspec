class Character
  attr_accessor :name # 読み書き
  # attr_reader :name # 読み取り専用
  # attr_writer :name # 書き込み専用

  # def get_name
  #   @name
  # end

  # def set_name(name)
  #   @name = name
  # end

  def initialize(name)
    @name = name
  end
end

yamada = Character.new("山田")
puts yamada.name
yamada.name = "山田2"
puts yamada.name
