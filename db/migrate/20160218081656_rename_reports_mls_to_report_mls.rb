class RenameReportsMlsToReportMls < ActiveRecord::Migration
  def change
    rename_table :report_mls, :reports_mls
  end
end
