class CreateCaseCoordinationsUsersJoinTable < ActiveRecord::Migration[5.2]
  def change
  	create_join_table :case_coordinations, :users do |t|
    end
  end
end
