class AddPodcastToPresentation < ActiveRecord::Migration
  def change
    add_reference :presentations, :podcast, index: true
  end
end
