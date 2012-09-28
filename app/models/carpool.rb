class Carpool < ActiveRecord::Base
  attr_accessible :from, :to, :user_id
end
