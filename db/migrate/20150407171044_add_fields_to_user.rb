class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :name, :string
    add_column :users, :twitter, :string
    add_column :users, :linkedin, :string
    add_column :users, :instagram, :string
    add_column :users, :admin, :boolean
  end
end
