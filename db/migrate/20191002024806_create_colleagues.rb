class CreateColleagues < ActiveRecord::Migration[6.0]
  def change
    create_table :colleagues do |t|
      t.string :fname
      t.string :lname
      t.string :title
      t.datetime :birthday
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
