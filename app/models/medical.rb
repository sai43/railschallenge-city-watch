class Medical < ActiveRecord::Base
  has_one :responder, as :resource 

  def set_type
    self.type = 'Medical'
  end

end
