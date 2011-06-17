class Reward < ActiveRecord::Base
  belongs_to :achievement

  attr_accessor :points
  
  validates_numericality_of :points
end
