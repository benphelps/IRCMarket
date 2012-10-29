dbconfig = YAML::load(File.open('ircmarket/database/configuration/database.yml'))
ActiveRecord::Base.establish_connection(dbconfig)
ActiveRecord::Base.logger = Logger.new(File.open('ircmarket/database/logs/database.log', 'a'))

class Buyer < ActiveRecord::Base
  attr_accessible :name, :wallet, :stocks
  has_many :stocks
  has_many :watchers
  has_many :transactions
  has_one :wallet
end

class Wallet < ActiveRecord::Base
  attr_accessible :amount, :margin, :trades
  attr_reader :value, :cash
  attr_writer :cash
  belongs_to :buyer

  # Gives back a Money object instead of cents.
  def cash
    Money.us_dollar(self.amount)
  end

  def cash=(cash)
    amount = cash.cents
    self.amount = amount
  end

  def margin_cash
    Money.us_dollar(self.amount)
  end

  def margin_cash=(cash)
    amount = cash.cents
    self.margin = amount
  end


end

class Stock < ActiveRecord::Base
  attr_accessible :name, :price, :amount, :trade
  belongs_to :buyer
end

class Bank < ActiveRecord::Base
  attr_accessible :in, :out, :trades, :profit
end

class Watchers < ActiveRecord::Base
  attr_accessible :symbol, :name, :monitor, :target
  belongs_to :buyer
end

class Transaction < ActiveRecord::Base
  attr_accessible :trade, :symbol, :amount, :wallet, :margin, :cost, :value
  attr_accessor :amount_c, :cost_c, :value_c, :wallet_c, :margin_c
  belongs_to :buyer


  def amount_c
    Money.us_dollar(self.amount)
  end

  def amount_c=(money)
    self.amount = money.cents
  end


  def cost_c
    Money.us_dollar(self.cost)
  end

  def cost_c=(money)
    self.cost = money.cents
  end


  def value_c
    Money.us_dollar(self.value)
  end

  def value_c=(money)
    self.value = money.cents
  end


  def wallet_c
    Money.us_dollar(self.wallet)
  end

  def wallet_c=(money)
    self.wallet = money.cents
  end


  def margin_c
    Money.us_dollar(self.margin)
  end

  def margin_c=(money)
    self.margin = money.cents
  end

end
