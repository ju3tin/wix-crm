class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company_name
      t.string :job_title
      t.integer :telephone

      t.timestamps
    end
  end
end
