class DogsController < OpenReadController
  before_action :set_dog, only: %i[:update, :destroy]

  # GET /dogs
  def index
    @dogs = Dog.all

    render json: @dogs
  end

  # GET /dogs/1
  def show
    render json: Dog.find(params[:id])
  end

  # POST /dogs
  def create
    @dog = current_user.dogs.build(dog_params)

    if @dog.save
      render json: @dog, status: :created
    else
      render json: @dog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dogs/1
  def update
    if @dog.update(dog_params)
      render json: @dog
    else
      render json: @dog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dogs/1
  def destroy
    @dog.destroy

    head :no_content
  end

  def set_dog
    @dog = current_user.dogs.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:text)
  end

  private :set_dog, :dog_params
end
