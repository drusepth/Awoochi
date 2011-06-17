class User < ActiveRecord::Base
  belongs_to :site
  has_many :unlocks

  attr_accessor :email
  
  validates_presence_of :email
  validates_uniqueness_of :email
end
