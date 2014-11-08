class AddContactIdToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :contact_id, :integer
  end
end
