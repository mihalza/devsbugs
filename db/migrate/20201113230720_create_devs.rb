class CreateDevs < ActiveRecord::Migration[5.2]
    def change
      create_table :devs do |t|
        t.string :devname
        t.timestamps
    end  
  end
end
