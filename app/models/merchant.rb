class Merchant < ActiveRecord::Base
  attr_accessible :name, :address
  has_many :deals
end
