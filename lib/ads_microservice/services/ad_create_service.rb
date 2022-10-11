# frozen_string_literal: true

class AdCreateService
  def initialize(ad_params)
    @params = ad_params
  end

  def call
    @params.merge!(
      created_at: current_time,
      updated_at: current_time
    )

    ad_id = Ad.insert(@params)
  end

  private

  def current_time
    @current_time ||= Time.now
  end
end
