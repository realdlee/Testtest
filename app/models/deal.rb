class Deal < ActiveRecord::Base
  attr_accessible :description, :expiry, :url, :price
  
  belongs_to :user
  has_many :transactions
  belongs_to :merchant

  validates_presence_of :description, :url, :expiry, :price
  validates_format_of :url, with: /[www.livingsocial.com]/ 

  scope :active, lambda { where('expiry > ?', Time.now) }
end