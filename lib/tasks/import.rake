namespace :import do
  desc "Import the newest Scryfall Bulk Data set into the database"
  task bulk_data: [:environment] do
    DownloadBulkData.call()
  end
end
