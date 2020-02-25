# frozen_string_literal: true

class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.float :weight
      t.string :ingredient
      t.date :bestby
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
