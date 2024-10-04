class RoomController < ApplicationController
  def index
    @copy = Copy.all
  end
end
