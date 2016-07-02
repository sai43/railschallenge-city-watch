class Police < ActiveRecord::Base
  has_one :responder, as :resource 

  def set_type
    self.type = 'Police'
  end

end
