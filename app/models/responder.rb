class Responder < ActiveRecord::Base
  
  # accepts_nested_attributes_for :resource
  #belongs_to :resource, :polymorphic => true, :dependent => :destroy

  belongs_to :fire
  belongs_to :police
  belongs_to :medical

  TYPES = %w(Fire Police Medical)
  before_save :set_type
  validates :type, presence: true, :inclusion => { :in => TYPES }

  def set_type
    raiser "You must override this method in each model inheriting from Responder!"
  end

  def resource_attributes=(params = {})
    self.resource = spec_type.constantize.new unless self.resource
    self.resource.attributes = params.select{|k| self.resource.attribute_names.include?(k) || self.resource.class::ACCESSOR.include?(k.to_sym)}
  end

end
