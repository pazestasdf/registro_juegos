class CreateGame01s < ActiveRecord::Migration[6.1]
  def change
    create_table :game01s do |t|
      t.string :name
      t.text :rule_text

      t.timestamps
    end
  end
end
