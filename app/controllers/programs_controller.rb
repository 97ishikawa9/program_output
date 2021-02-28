class ProgramsController < ApplicationController

  def index
    @programs = Program.all.order(created_at: :desc)
  end

  def new
    @program = ProgramsTagRelation.new
  end
  
end
