require "#{Rails.root}/lib/import.rb"

data_folder = "#{Rails.root}/db/fixtures/development/data"

Import.csv_read(data_folder, 'users.csv', true) do |line, idx|
  User.seed do |s|
    s.id         = line[0]
    s.user_cd    = line[1]
    s.uid    = line[2]
    s.provider    = line[3]
    s.first_name    = line[4]
    s.last_name    = line[5]
    s.image_path    = line[6]
    s.language_id    = line[7]
    s.email    = line[8]
    s.tel    = line[9]
    s.nation_id    = line[10]
    s.zip_code    = line[11]
    s.address1    = line[12]
    s.address2    = line[13]
    s.address3    = line[14]
    s.address4    = line[15]
    s.twitter_user_name = line[16]
    s.facebook_user_name = line[17]
    s.url1        = line[18]
    s.url2        = line[19]
    s.url3        = line[20]
    s.birth_date  = line[21]
    s.birth_date_pub_div = line[22]
    s.gender_div  = line[23]
    s.gender_pub_div = line[24]
    s.self_description = line[25]
    s.status_div  = line[26]
    s.withdraw_reason_div = line[27]
    s.withdraw_reason_detail = line[28]
    s.news_letter_subscribe_flg = line[29]
    s.report_notify_flg = line[30]
    s.message_notify_flg = line[31]
    s.comment_notify_flg = line[32]
    s.member_from = line[33]
    s.blacklisted_flg = line[34]
    s.blacklisted_comment = line[35]
  end
end

Import.csv_read(data_folder, 'projects.csv', true) do |line, idx|
  Project.seed do |s|
    s.id         = line[0]
    s.type_div = line[1]
    s.prime_language_id = line[2]
    s.multi_language_ids = line[3]
    s.category_id = line[4]
    s.goal_amount = line[5]
    s.currency_id = line[6]
    s.applied_duration_months = line[7]
    s.applied_duration_days = line[8]
    s.applied_due_date = line[9]
    s.creator_user_id = line[10]
    s.twitter_user_name = line[11]
    s.facebook_user_name = line[12]
    s.url1 = line[13]
    s.url2 = line[14]
    s.url3 = line[15]
    s.nation_id = line[16]
    s.region = line[17]
    s.status_div = line[18]
    s.closed_status_div = line[19]
    s.applied_datetime = line[20]
    s.approved_datetime = line[21]
    s.approver_staff_id = line[22]
    s.begin_datetime = line[23]
    s.due_datetime = line[24]
    s.end_datetime = line[25]
  end
end

Import.csv_read(data_folder, 'projects_mls.csv', true) do |line, idx|
  ProjectsMl.seed do |s|
    s.id                  = line[0]
    s.project_id          = line[1]
    s.language_id         = line[2]
    s.title               = line[3]
    s.image_path          = line[4]
    s.creator_name        = line[5]
    s.creator_image_path  = line[6]
    s.creator_description = line[7]
  end
end

Import.csv_read(data_folder, 'project_details.csv', true) do |line, idx|
  ProjectDetail.seed do |s|
    s.id                  = line[0]
    s.project_id          = line[1]
    s.language_id         = line[2]
    s.sort_order          = line[3]
    s.title               = line[4]
    s.description         = line[5]
    s.image_path          = line[6]
  end
end

Import.csv_read(data_folder, 'rewards.csv', true) do |line, idx|
  Reward.seed do |s|
    s.id                  = line[0]
    s.project_id          = line[1]
    s.sort_order          = line[2]
    s.price               = line[3]
    s.estimated_delivery_year = line[4]
    s.estimated_delivery_month = line[5]
    s.estimated_delivery_detail_div = line[6]
    s.ships_to_div        = line[7]
    s.max_count           = line[8]
    s.status_div          = line[9]
    s.applied_datetime    = line[10]
    s.approved_datetime   = line[11]
    s.approver_staff_id   = line[12]
    s.begin_datetime      = line[13]
  end
end

Import.csv_read(data_folder, 'rewards_mls.csv', true) do |line, idx|
  RewardsMl.seed do |s|
    s.id                  = line[0]
    s.reward_id           = line[1]
    s.language_id         = line[2]
    s.title               = line[3]
    s.image_path          = line[4]
    s.description         = line[5]
  end
end

Import.csv_read(data_folder, 'rankings.csv', true) do |line, idx|
  Ranking.seed do |s|
    s.id                      = line[0]
    s.active_flg              = line[1]
    s.begin_date              = line[2]
    s.end_date                = line[3]
  end
end

Import.csv_read(data_folder, 'ranking_details.csv', true) do |line, idx|
  RankingDetail.seed do |s|
    s.id                      = line[0]
    s.ranking_id              = line[1]
    s.ranking_type_div        = line[2]
    s.ranked_order            = line[3]
    s.project_id              = line[4]
  end
end

Import.csv_read(data_folder, 'funding_r_summaries.csv', true) do |line, idx|
  FundingRSummary.seed do |s|
    s.id                      = line[0]
    s.project_id              = line[1]
    s.reward_id               = line[2]
    s.funded_count            = line[3]
    s.backer_count            = line[4]
    s.funded_amount           = line[5]
  end
end

Import.csv_read(data_folder, 'funding_p_summaries.csv', true) do |line, idx|
  FundingPSummary.seed do |s|
    s.id                      = line[0]
    s.project_id              = line[1]
    s.funded_count            = line[2]
    s.backer_count            = line[3]
    s.funded_amount           = line[4]
    s.goal_amount             = line[5]
    s.achieved                = line[6]
  end
end
