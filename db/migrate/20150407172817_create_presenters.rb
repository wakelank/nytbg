class CreatePresenters < ActiveRecord::Migration
  def change
    create_table :presenters do |t|
      t.string :name
      t.text :bio
      t.string :photo
      t.string :website
      t.string :twitter
      t.string :linkedin
      t.string :instagram

      t.timestamps
    end
  end
end
