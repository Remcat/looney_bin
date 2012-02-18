class TalentsController < ApplicationController
  def index
    @talent = Talent.all
  end

  def new
    @talent = Talent.new
  end

  def create
    @talent = Talent.new(params[:talents])

    if @talent.save
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def show
    @talent = Talent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @talent }
    end
  end
end
