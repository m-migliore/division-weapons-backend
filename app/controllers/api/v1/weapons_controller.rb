class Api::V1::WeaponsController < ApplicationController
  before_action :find_weapon, only: [:update, :destroy]

  def index
    @weapons = Weapon.all
    render json: @weapons
  end

  def create
    @weapon = Weapon.create(weapon_params)
    if @weapon.save
      render json: @weapon, status: :accepted
    else
      render json: { errors: @weapon.errors }, status: :unprocessible_entity
    end
  end

  def update
   @weapon.update(weapon_params)
   if @weapon.save
     render json: @weapon, status: :accepted
   else
     render json: { errors: @weapon.errors }, status: :unprocessible_entity
   end
  end

  def destroy
    @weapon.destroy
    render json: {status: "weapon deleted"}
  end

  private

  def weapon_params
    params.permit(:name, :damage, :rpm, :mag, :level, :favorite)
  end

  def find_weapon
    @weapon = Weapon.find(params[:id])
  end
end
