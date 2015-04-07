class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
