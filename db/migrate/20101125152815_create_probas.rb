class CreateProbas < ActiveRecord::Migration
  def self.up
    create_table :probas do |t|
      t.number :i
      t.string :s

      t.timestamps
    end
  end

  def self.down
    drop_table :probas
  end
end
