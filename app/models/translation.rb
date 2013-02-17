class Translation < ActiveRecord::Base
  attr_accessible :ans1, :ans2, :ans3, :ans4, :correctAns, :question
  validates :correctAns
end