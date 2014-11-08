class AddNotesToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :notes, :text
  end
end
