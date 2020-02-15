# frozen_string_literal: true

class SmallPetsController < ApplicationController
  before_action :set_small_pet, only: %i[show update destroy]

  # GET /small_pets
  def index
    @small_pets = current_user.small_pets.all

    render json: @small_pets
  end

  # GET /small_pets/1
  def show
    render json: @small_pet
  end

  # POST /small_pets
  def create
    @small_pet = current_user.small_pets.build(small_pet_params)

    if @small_pet.save
      render json: @small_pet, status: :created, location: @small_pet
    else
      render json: @small_pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /small_pets/1
  def update
    if @small_pet.update(small_pet_params)
      render json: @small_pet
    else
      render json: @small_pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /small_pets/1
  def destroy
    @small_pet.destroy

    head :no_content
  end

  def set_small_pet
    @small_pet = current_user.small_pets.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def small_pet_params
    params.require(:small_pet).permit(:id, :name, :animal)
  end
  private :set_small_pet, :small_pet_params
end
