class AddSpeakerToPresentation < ActiveRecord::Migration
  def change
    add_reference :presentations, :speaker, index: true
  end
end
