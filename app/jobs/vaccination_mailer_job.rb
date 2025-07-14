class VaccinationMailerJob
  include Sidekiq::Worker
  queue_as :default

  def perform(pet_id)
    pet = Pet.find_by(id: pet_id)
    return unless pet

    Rails.logger.info "Simulated email: Vaccination for #{pet.name} has expired."
  end
end
