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

  private

  def program_params
    params.require(:programs_tag_relation).permit(:date, :title, :fact, :feeling, :name)
  end
end
