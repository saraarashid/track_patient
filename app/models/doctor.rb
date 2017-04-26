class Doctor < ActiveRecord::Base
    has_many :patients
validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@gmail\.com\z/,
                  message: "must be a gmail.com account" }
validates_uniqueness_of :license_no , case_sensitive: true
validates_format_of :phone_number, with:  /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
end 

