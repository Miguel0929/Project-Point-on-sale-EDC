class DepartamentsController < ApplicationController
  before_action :set_departament, only: %i[ show edit update destroy ]


  def show
  end

  def new
    @departament = Departament.new
  end


  def create
    @departament = Departament.new(departament_params)

    respond_to do |format|
      if @departament.save
        format.html { redirect_to @departament, notice: "Departamento creado correctamente." }
        format.json { render :show, status: :created, location: @departament }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @departament.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    def set_departament
      @departament = Departament.find(params[:id])
    end
    def departament_params
      params.require(:departament).permit(:strDepartament)
    end
end
