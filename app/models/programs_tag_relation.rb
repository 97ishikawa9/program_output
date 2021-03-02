class ProgramsTagRelation

  include ActiveModel::Model
  attr_accessor :date, :title, :fact, :feeling, :name

  with_options presence: true do
    validates :date
    validates :title
    validates :fact
    validates :feeling
    validates :name
  end

  def save
    program = Program.create(date: date, title: title, fact: fact, feeling: feeling)
    tag = Tag.where(name: name).first_or_initialize
    tag.save

    ProgramTag.create(program_id: program.id, tag_id: tag.id)
  end

end