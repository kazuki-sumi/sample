class User
  # キーワード引数
  def initialize(name: "", age: nil)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end
end