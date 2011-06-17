class Account < ActiveRecord::Base
  has_many :sites

  attr_accessor :email, :password

  validates_presence_of :email, :password
  validates_length_of :password, :minimum => 5
  validates_uniqueness_of :email
end
