class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :choice
      t.belongs_to :user
      t.belongs_to :question
    end
  end
end
