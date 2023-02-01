require './lib/scryfall/bulk_data.rb'

namespace :import do
  desc "Import the newest Scryfall Bulk Data set into the database"
  task :bulk_data do
    puts "Fetching newest bulk exports..."
    response = Scryfall::BulkData.type("oracle_cards")
    puts "Found a bulk export from #{response.to_h.dig(:updated_at)}"
    puts "Downloading..."

    download_uri = response.to_h.dig(:download_uri)
    download = URI.open(download_uri)

    IO.copy_stream(download, 'tmp/import.json')
  end
end

