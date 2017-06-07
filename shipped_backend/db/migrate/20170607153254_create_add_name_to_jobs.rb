class CreateAddNameToJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :add_name_to_jobs do |t|
        
      t.timestamps
    end
  end
end
