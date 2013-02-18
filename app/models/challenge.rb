class Challenge < ActiveRecord::Base
  attr_accessible :q1, :q2, :q3, :q4, :q5, :q6, :q7

  validate :correct_answers
  
  def correct_answers
    errors.add(:q1, "incorrect") unless self.q1 == "I"
    errors.add(:q2, "incorrect") unless self.q1 == "that"
    errors.add(:q3, "incorrect") unless self.q1 == "creature"
    errors.add(:q4, "incorrect") unless self.q1 == "saw"
    errors.add(:q5, "incorrect") unless self.q1 == "on"
    errors.add(:q6, "incorrect") unless self.q1 == "way"
    errors.add(:q7, "incorrect") unless self.q1 == "go"
  end
end