class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :answer
      t.integer :particeipant_id
      t.integer :q_n_id

      t.timestamps
    end
  end

  def self.down
    drop_table :answers
  end
end
