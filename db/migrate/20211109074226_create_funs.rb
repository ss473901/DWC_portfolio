class CreateFuns < ActiveRecord::Migration[5.2]
  def change
    create_table :funs do |t|

      t.integer :proposer_id
      t.text :content

      t.timestamps
    end
  end
end
