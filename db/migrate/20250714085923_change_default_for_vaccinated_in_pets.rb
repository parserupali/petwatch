class ChangeDefaultForVaccinatedInPets < ActiveRecord::Migration[7.1]
  def change
    change_column_default :pets, :vaccinated, from: nil, to: true
    Pet.where(vaccinated: nil).update_all(vaccinated: true) # backfill existing records
  end
end
