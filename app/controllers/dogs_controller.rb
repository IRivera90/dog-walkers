class DogsController < ProtectedController
  before_action :set_dog, only: %i[show update destroy]

  # GET /dogs
  def index
    @dogs = current_user.dogs.all

    render json: @dogs
  end

  # GET /dogs/1
  def show
    render json: @dog
  end

  # POST /dogs
  def create
    @dog = current_user.dogs.build(dog_params)

    if @dog.save
      render json: @dog, status: :created, location: @dog
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
    params.require(:dog).permit(:id, :name, :breed)
  end
  private :set_dog, :dog_params
end
