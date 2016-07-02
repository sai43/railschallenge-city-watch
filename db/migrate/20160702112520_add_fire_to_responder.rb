class AddFireToResponder < ActiveRecord::Migration
  def change
    add_column :responders, :fire_id, :string
  end
end
