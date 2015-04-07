class AddPresentationsToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :presentation, index: true
  end
end
