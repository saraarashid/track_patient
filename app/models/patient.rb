class Patient < ActiveRecord::Base
    belongs_to :doctor
validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@gmail\.com\z/,
                  message: "must be a gmail.com accounts" }
validates_uniqueness_of :first_name, :last_name , :doctor_id, case_sensitive: true
validates_format_of :phone_number, with:  /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
end
