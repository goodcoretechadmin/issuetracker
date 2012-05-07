class CreateIssues < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.text :description
      t.boolean :substantiated
      t.text :resolution
      t.references :client, :null => false
      t.references :doctor
      t.string :status
      t.string :issue_type

      t.timestamps
    end

    #add foreign keys (will not work in sqlite)
    #execute <<-SQL
    #  ALTER TABLE issues
    #    ADD CONSTRAINT fk_issue_client
    #    FOREIGN KEY (client_id)
    #    REFERENCES clients(id),
    #    ADD CONSTRAINT fk_issue_doctor
    #    FOREIGN KEY (doctor_id)
    #    REFERENCES doctors(id)
    #SQL
  end

  def self.down
    # drop foreign keys (will not work in sqlite)
    #execute <<-SQL
    #  ALTER TABLE issues
    #    DROP FOREIGN KEY fk_issue_client,
    #    DROP FOREIGN KEY fk_issue_doctor
    #SQL
    drop_table :issues
  end
end
