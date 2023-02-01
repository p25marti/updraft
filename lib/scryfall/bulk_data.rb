require 'scryfall'

module Scryfall
  class BulkData < Scryfall::Client
    class << self
      # Returns a List of all Bulk Data items on Scryfall


      # https://scryfall.com/docs/api/bulk-data/all
      #
      # @param pretty  [Boolean] If true, the returned JSON will be prettified. Avoid using for production code.
      def all(pretty: false)
        req = Request.new(
            params: {pretty: pretty},
            headers: nil,
            body: nil)

        Scryfall::Search.get("/bulk-data", self, req)
      end

      # Returns a single Bulk Data object with the given ID.
      #
      # https://scryfall.com/docs/api/bulk-data/id
      #
      # @param id      [String] The Scryfall set ID
      # @param format  [String] The data format to return. This method only supports json.
      # @param pretty  [Boolean] If true, the returned JSON will be prettified. Avoid using for production code.
      def id(id, format: "json", pretty: false)
        req = Request.new(
            params: {format: format, pretty: pretty},
            headers: nil,
            body: nil)

        Scryfall::BulkData.new JSON.parse(connection.get("/bulk-data/#{id}", req).body)
      end

      # Returns a single Bulk Data object with the given type.
      #
      # https://scryfall.com/docs/api/bulk-data/type
      #
      # @param type    [String] The Bulk Data type
      # @param format  [String] The data format to return. This method only supports json.
      # @param pretty  [Boolean] If true, the returned JSON will be prettified. Avoid using for production code.
      def type(type, format: "json", pretty: false)
        req = Request.new(
            params: {format: format, pretty: pretty},
            headers: nil,
            body: nil)

        Scryfall::BulkData.new JSON.parse(connection.get("/bulk-data/#{type}", req).body)
      end
    end
  end
end

