class CreateFilters < ActiveRecord::Migration
  def self.up
    create_table :filters do |t|
      t.string :name
      t.integer :report_id
      t.string :field_name
      t.string :operation
      t.string :value

      t.timestamps
    end
  end

  def self.down
    drop_table :filters
  end
end
