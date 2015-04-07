class AddVideoToPresentation < ActiveRecord::Migration
  def change
    add_reference :presentations, :video, index: true
  end
end
