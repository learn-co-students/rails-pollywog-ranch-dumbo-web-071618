class TadpolesController < ApplicationController
  def index
    @tadpoles = Tadpole.all
  end

  def show
    @tadpole = Tadpole.find(params[:id])
  end

  def metamorphose
     taddy = Tadpole.find(params[:id])
    tadpole_frog = Frog.new(name: taddy.name, color: taddy.color, pond_id: taddy.pond.id)
      if tadpole_frog.save
        taddy.destroy
        redirect_to "/frogs/#{tadpole_frog.id}"
      else
        render :show
      end
  end

  def destroy
    @tadpole = Tadpole.find(params[:id])
    @tadpole.destroy
    redirect_to frogs_path
  end

  private

  def tadpole_frog_params
    params.require(:frog).permit(:name, :color, :pond_id)
  end

end
