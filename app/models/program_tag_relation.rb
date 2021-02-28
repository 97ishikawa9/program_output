class ProgramTagRelation

  include ActiveModel::Model
  attr_accessor :date, :title, :fact, :feeling, :name

  with_options presence: true do
    validates :date
    validates :title
    validates :fact
    validates :feeling
    validates :name
  end

  def sava
    program = Program.create()
    tag = Tag.create(name: name)

    ProgramTag.create(program_id: program.id, tag_id: tag.id)
  end

end