class CreateUserModel < ActiveRecord::Migration[7.0]
  def change
    create_table :Users do |t|
      t.string :name
      t.string :email, index: { unique: true, name: 'unique_emails'}
      t.numeric :age
      t.string :phone_number
      t.timestamps
    end
  end
end
