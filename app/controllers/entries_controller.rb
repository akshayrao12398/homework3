class EntriesController < ApplicationController
  def new
    @entry = Entry.new
    @place = Place.find(params[:place_id])
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to place_path(@entry.place)
    else
      render :new
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :occurred_on, :place_id)
  end
end