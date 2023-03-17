require './lib/scryfall/bulk_data.rb'
require 'open-uri'

class DownloadBulkData
  include Troupe

  def call
    download_cards
    persist_cards
  end

  def download_cards
    puts "Fetching newest bulk exports..."
    response = Scryfall::BulkData.type("default_cards")
    puts "Found a bulk export from #{response.to_h.dig(:updated_at)}"
    puts "Downloading..."

    download_uri = response.to_h.dig(:download_uri)
    download = URI.open(download_uri)

    IO.copy_stream(download, 'tmp/import.json')
  end

  def persist_cards
    puts "Download complete, ingesting cards into database..."
    json_data = File.read("tmp/import.json")
    parsed_cards = JSON.parse(json_data)

    parsed_cards.each do |c|
      Card.new(
        name: c["name"],
        scryfall_id: c["id"],
        oracle_id: c["oracle_id"],
        oracle_text: c["oracle_text"],
        set: c["set"],
        set_id: c["set_id"],
        scryfall_uri: c["scryfall_uri"],
        cmc: c["cmc"],
        color_identity: c["color_identity"],
        colors: c["colors"],
        layout: c["layout"],
        mana_cost: c["mana_cost"],
        type_line: c["type_line"],
        oracle_text: c["oracle_text"],
        power: c["power"],
        toughness: c["toughness"],
        rarity: c["rarity"],
        reprint: c["reprint"],
      ).save!
    end
  end
end
