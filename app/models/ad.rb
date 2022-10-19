# frozen_string_literal: true

class Ad < Sequel::Model
  def validate
    super

    validates_presence :city, message: 'city is blank'
    validates_presence :title, message: 'title is blank'
    validates_presence :description, message: 'description is blank'
    validates_presence :user_id, message: 'user_id is blank'
  end
end
