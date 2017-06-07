class DeleteAddNameToJobs < ActiveRecord::Migration[5.1]
  def change
      drop_table :add_name_to_jobs
      add_column :jobs, :name, :string
  end
end
