class AddCreatorIdToEvents < ActiveRecord::Migration
  def change
    add_belongs_to :events, :creator
  end
end
