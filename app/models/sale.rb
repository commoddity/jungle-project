class Sale < ActiveRecord::Base

  validates :name, presence: true
  validates :starts_on, presence: true
  validates :ends_on, presence: true
  validates :percent_off, presence: true

  validate :starts_on_cannot_be_in_the_past
  validate :ends_on_cannot_be_in_the_past
  
  def self.active
    where("sales.starts_on <= ? AND sales.ends_on >= ?", Date.current, Date.current)
  end

  def finished?
    ends_on < Date.current
  end

  def upcoming?
    starts_on > Date.current
  end

  def active? 
    !upcoming? && !finished?
  end

  def starts_on_cannot_be_in_the_past
    if starts_on.present? && starts_on < Date.today
      errors.add(:starts_on, "can't be in the past")
    end
  end    

  def ends_on_cannot_be_in_the_past
    if ends_on.present? && ends_on < Date.today
      errors.add(:ends_on, "can't be in the past")
    end
  end    
  
end
