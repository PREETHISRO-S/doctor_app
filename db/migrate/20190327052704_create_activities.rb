class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
    	t.string   :name
    	t.string :hour
    	t.string :burn_calories
    	t.string :gain_calories
    	t.date	:activity_date
    	t.integer :patient_id

      t.timestamps
    end
  end
end
