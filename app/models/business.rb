class Business < ActiveRecord::Base
  has_many :employments
  has_many :users, through: :employments

end
