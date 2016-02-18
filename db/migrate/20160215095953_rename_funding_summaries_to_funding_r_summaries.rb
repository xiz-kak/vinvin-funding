class RenameFundingSummariesToFundingRSummaries < ActiveRecord::Migration
  def change
    rename_table :funding_summaries, :funding_r_summaries
  end
end
