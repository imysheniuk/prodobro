class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :description
      t.string :status
      t.integer :current_amount
      t.integer :needed_amount
      t.string :requisite
      t.integer :category_id
      t.datetime :finished_at

      t.timestamps
    end
  end
end
