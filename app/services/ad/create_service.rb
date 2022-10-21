# frozen_string_literal: true

module Ad
  class CreateService
    def initializer(params)
      @params = params
      @errors = []
    end

    def call
      @ad = Ad.new(@params)
      if @ad.valid?
        @ad.save
      else
        fail(ad.errors)
      end

      self
    end

    def success?
      !failure?
    end

    def failure?
      @errors.any?
    end

    def success
      @ad
    end

    def failure
      @errors
    end

    private

    def fail(messages)
      @errors += Array(messages)
    end
  end
end
