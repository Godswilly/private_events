class RemoveColumnFromEventAttendees < ActiveRecord::Migration[6.0]
  def change
    remove_column :event_attendees, :users_id, :integer
    remove_column :event_attendees, :events_id, :integer
  end
end
