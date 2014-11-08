class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :activity_title
      t.text :description
      t.string :activity_type
      t.datetime :date

      t.timestamps
    end
  end
end
