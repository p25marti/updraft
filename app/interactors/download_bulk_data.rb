require './lib/scryfall/bulk_data.rb'
require 'open-uri'

class DownloadBulkData
  include Troupe

  def call
    download_sets
    # download_cards
    # persist_cards
  end

  def download_sets
    puts "Fetching sets"
    sets = Scryfall::Set.all()

    puts "Download complete, ingesting sets into database..."
    sets.each do |s|
      SetRelease.create(
        release_id: s["id"],
        code: s["code"],
        name: s["name"],
        set_type: s["set_type"],
        released_at: s["released_at"],
        card_count: s["card_count"],
        icon_svg_uri: s["icon_svg_uri"],
      ).save!
    end
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
        power: c["power"],
        toughness: c["toughness"],
        rarity: c["rarity"],
        reprint: c["reprint"],
      ).save!
    end
  end
end
