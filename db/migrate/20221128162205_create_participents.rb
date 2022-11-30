class CreateParticipents < ActiveRecord::Migration[7.0]
  def change
    create_table :participents do |t|
      t.references :user, null: false, foreign_key: true
      t.references :party, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end