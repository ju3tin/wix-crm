class RemoveActivityIdFromContacts < ActiveRecord::Migration
  def change
  	 remove_column :contacts, :activity_id, :string
  end
end
