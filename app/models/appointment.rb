class Appointment < ApplicationRecord
	validates :starts_at, :ends_at, :patient_id, :presence => true
end
