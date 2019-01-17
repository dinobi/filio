class AddUserIdToWorkSamples < ActiveRecord::Migration[5.2]
  def change
    add_reference :work_samples, :user, foreign_key: true
  end
end
