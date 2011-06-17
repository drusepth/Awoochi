class Site < ActiveRecord::Base
  belongs_to :account
  has_many :users
  has_many :achievements

  attr_accessor :name, :url, :api_token
  
  validates_presence_of :name
  validates_presence_of :url
  validates_presence_of :api_token
  validates_uniqueness_of :name
  validates_uniqueness_of :url
  validates_uniqueness_of :api_token
end
