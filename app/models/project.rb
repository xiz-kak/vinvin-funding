class Project < ActiveRecord::Base
  include ModelUtil

  has_many :projects_mls
  has_many :project_details
  has_many :rewards
  has_many :funding_p_summaries

  scope :open, -> { where(status_div: 5).where("begin_datetime <= :now and due_datetime >= :now", now: Time.zone.now) }
  scope :proper, -> { where(status_div: [5, 9]).where.not(closed_status_div: 1) }

  def ml(locale)
    self.projects_mls.localed(locale_for_view(locale))
  end

  def category_name(locale)
    Category.n(self.category_id, locale_for_view(locale))
  end

  def goal_amount_f
    self.goal_amount.to_s(:currency, locale: 'en')
  end

  def backer_count_f
    self.funding_p_summaries.first.backer_count.to_s(:delimited)
  end

  def funded_amount
    self.funding_p_summaries.first.funded_amount
  end

  def funded_amount_f
    self.funded_amount.to_s(:currency, locale: 'en')
  end

  def funding_achieved
    self.funding_p_summaries.first.funded_amount/self.goal_amount*100
  end

  def days_to_go
    days = (self.due_datetime.to_date - Time.zone.now.to_date).to_i
    if days > 0
      days
    elsif days == 0
      1
    else
      0
    end
  end

  class << self
    def index_list
      Project.proper.order(begin_datetime: :desc)
    end

    def open_list
      Project.open.order(begin_datetime: :desc).limit(100)
    end

    def last_minute_list
      Project.open.order(:due_datetime).limit(100)
    end

    def new_list
      Project.where(status_div: 5).order(begin_datetime: :desc).limit(100)
    end

    def pledged_list
      Project.joins(:funding_p_summaries).proper.order('funding_p_summaries.funded_amount DESC').limit(100)
    end

    def final_push_list
      Project.joins(:funding_p_summaries).open.where('funding_p_summaries.achieved < 1').order('funding_p_summaries.achieved DESC').limit(100)
    end

    def list_by_category(ctgr_id)
      Project.proper.where(category_id: ctgr_id)
    end
  end

  private

  def locale_for_view(locale)
    langs = self.multi_language_ids.split(',').map(&:to_i)
    langs << self.prime_language_id
    if langs.include?(self.class.locale_to_lang(locale))
      locale
    else
      self.class.lang_to_locale(self.prime_language_id)
    end
  end
end
