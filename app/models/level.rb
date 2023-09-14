class Level < ApplicationRecord
  has_many :stages

  def configure_for_user
    id = self.id
    index = self.index
    name = self.name
    stages = Stage.where(:level_id => id).order(:step)

    {
      id: id,
      index: index,
      name: name,
      stages: stages
    }

  end
end
