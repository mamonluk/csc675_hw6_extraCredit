class CreateThirds < ActiveRecord::Migration
  def self.up
    create_table :thirds do |t|
      t.string :seller

      t.timestamps
    end
  end

  def self.down
    drop_table :thirds
  end
end
