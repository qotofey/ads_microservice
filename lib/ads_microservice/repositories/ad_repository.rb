# frozen_string_literal: true

require_relative 'base_repository'

class AdRepository < BaseRepository
  def initialize
    @collection = DB[:ads]
  end

  def all
    @collection.all
  end

  def find(id)
    @collection.where(id: id).limit(1).first
  end

  def where(params)
    @collection.where(params).all
  end

  def take
    @collection.first
  end

  def first
    @collection.order(:id).first
  end

  def last
    @collection.order(:id).last
  end

  def create(params)
    current_time = DateTime.now
    params.merge!(
      created_at: current_time,
      updated_at: current_time
    )

    @collection.insert(params)
  end
end
