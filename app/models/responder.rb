class Responder < ActiveRecord::Base
 
  TYPES = %w(Fire Police Medical)
  before_save :set_type
  validates :type, presence: true, :inclusion => { :in => TYPES }
  validates :capacity, presence: true, length: { in: 1..5 }
  validates :name, presence: true, uniqueness: true

  def set_type
    raiser "You must override this method in each model inheriting from Responder!"
  end

end
