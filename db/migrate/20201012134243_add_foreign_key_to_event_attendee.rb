class AddForeignKeyToEventAttendee < ActiveRecord::Migration[6.0]
  def change
    add_column :event_attendees, :attendee_id, :integer
    add_column :event_attendees, :event_attended_id, :integer
  end
end
