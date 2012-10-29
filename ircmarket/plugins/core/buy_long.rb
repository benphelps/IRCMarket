class BuyLong
  include Cinch::Plugin
  
  @prefix = /^./

  match "hello"

  def execute(m)
    m.reply "Hello, #{m.user.nick}"
  end
  
end