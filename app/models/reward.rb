class Reward < ActiveRecord::Base
  has_many :rewards_mls

  belongs_to :project

  def ml(locale)
    self.rewards_mls.localed(self.project.locale_for_view(locale))
  end
end
