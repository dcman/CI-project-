class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :question
      t.integer :survey_id
      t.integer :q_n

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
