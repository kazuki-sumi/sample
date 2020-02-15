class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # インスタンスメソッド
  # クラスのインスタンスに対して呼び出せる(今回の場合はUserクラスのインスタンス)
  # インスタンスに含まれるデータ(インスタンス変数: @name)を読み書きする場合はインスタンスメソッドを定義する
  def hello
    "Hey, #{@name}"
  end

  # user = User.new("Alice")
  # インスタンスによって内部のデータが異なるため、helloメソッドの結果も異なる。
  # user.hello
  # => "Hey, Alice"

  # クラスメソッド
  # インスタンスに対して実行するのではなく、クラスに対して実行できるメソッド
  def self.hoge
    "hoge"
  end
  # User.hoge
  # => "hoge"
  # user.hoge
  # => NoMethodError (undefined method `hoge')

  # self付きでnameメソッドを呼ぶ
  def fuga
    "fuga fuga #{self.name}"
  end
  # user.fuga
  # => "fuga fuga Alice"
end