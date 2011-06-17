class Unlock < ActiveRecord::Base
  belongs_to :user, :class_name => "Parent", :foreign_key => "user_id"
  belongs_to :achievement, :class_name => "Parent", :foreign_key => "achievement_id"  
end
