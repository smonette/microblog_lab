class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :content
      t.references :user
      t.timestamps
    end
  end
end