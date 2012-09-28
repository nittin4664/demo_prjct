class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone_no
end
