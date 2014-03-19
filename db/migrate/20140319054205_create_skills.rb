class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
    	t.string   "name"
    	t.integer  "experience"
    	t.integer  "level"
    	t.text     "description"
    	t.datetime "created_at"
    	t.datetime "updated_at"
    end
  end
end
