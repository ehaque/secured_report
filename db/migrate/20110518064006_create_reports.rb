class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.string :name
      t.string :code
      t.string :file_name
      t.boolean :is_secured

      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
