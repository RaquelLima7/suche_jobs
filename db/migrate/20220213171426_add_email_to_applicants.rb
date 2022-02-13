class AddEmailToApplicants < ActiveRecord::Migration[6.0]
  def change
    add_column :applicants, :email, :string
  end
end
