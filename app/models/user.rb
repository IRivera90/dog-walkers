# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :dogs, :small_pets
end
