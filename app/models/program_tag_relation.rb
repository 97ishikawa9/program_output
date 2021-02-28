class ProgramTagRelation

  include ActibeModel::ActibeModel
  attr_accessor :

  with_options presence: true do
    validates :
    validates :
  end

  def sava
    program = Program.create()
    tag = Tag.create(name: name)

    TweetTag.create(program_id: program.id: tag_id: tag.id)
  end
  
end