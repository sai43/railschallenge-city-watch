class Fire < Responder
  has_one :responder, as: :resource 
  
  def set_type
    self.type = 'Fire'
  end

end
