class CreateWorkSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :work_samples do |t|
      t.string   :name
      t.text     :content
      t.string   :link
      t.integer  :status
      t.datetime :created
      t.datetime :published_at
      t.boolean  :is_archived

      t.timestamps
    end
  end
end
