class ProgramsController < ApplicationController

  def index
    @programs = Program.all.order(created_at: :desc)
  end

  def new
    @program = ProgramsTagRelation.new
  end

  def create
    @program = ProgramsTagRelation.new(program_params)
    if @program.valid?
      @program.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  def search
    return nil if params[:keyword] == ""
    tag = Tag.where(['name LIKE ?', "%#{params[:keyword]}%"])
    render json:{ keyword: tag }
  end

  def show
    @program = Program.find(params[:id])
  end

private
  def program_params
    params.require(:programs_tag_relation).permit(:date, :title, :summary, :fact, :feeling, :name)
  end
end
