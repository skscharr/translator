class Challenge < ActiveRecord::Base
  attr_accessible :q1, :q2, :q3, :q4, :q5, :q6, :q7
  
  validate :correct_answers, :on => :create
  
  def correct_answers
    errors.add(:q1, "incorrect") unless self.q1 == 'I'
    errors.add(:q2, "incorrect") unless self.q2 == "that"
    errors.add(:q3, "incorrect") unless self.q3 == "creature"
    errors.add(:q4, "incorrect") unless self.q4 == "saw"
    errors.add(:q5, "incorrect") unless self.q5 == "on"
    errors.add(:q6, "incorrect") unless self.q6 == "way"
    errors.add(:q7, "incorrect") unless self.q7 == "go"
  end
  
end