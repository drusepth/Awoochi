class Achievement < ActiveRecord::Base
  belongs_to :site
  has_many :rewards

  attr_accessor :name, :description
  
  validates_presence_of :name
end
