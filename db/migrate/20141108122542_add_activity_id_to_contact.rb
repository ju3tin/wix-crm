class AddActivityIdToContact < ActiveRecord::Migration
  def change
    add_reference :contacts, :activity, index: true
  end
end
