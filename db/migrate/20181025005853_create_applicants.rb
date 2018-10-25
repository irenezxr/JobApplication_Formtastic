class CreateApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :university
      t.string :major
      t.string :graduation_time
      t.string :sponsorship
      t.string :degree

      t.timestamps
    end
  end
end
