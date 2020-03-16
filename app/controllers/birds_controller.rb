class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # The .to_json is being run implicitly because of render json:, but if we needed to we could force this to be json
    # The 'render json:' is still important. When it's something nonsense like 'hopscotch:' it falls back to the default display in index.html.erb
    render hopscotch: {birds: @birds, message_of_the_day: "Lets shoot them and make some pretty pictures"}.to_json
  end
end