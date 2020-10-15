class CreateEventAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :event_attendees do |t|
      t.belongs_to :users, index: { unique: true }, foreign_key: true
      t.belongs_to :events, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
