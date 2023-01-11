require 'rails'
require 'kaminari-neo4j'
# Set credentials
credentials = Neo4j::Driver::AuthTokens.basic('neo4j','password')
url = 'neo4j://127.0.0.1:7687'
ActiveGraph::Base.driver = Neo4j::Driver::GraphDatabase.driver(url, credentials , encryption: false)

unless Rails.env.production?
  module ActiveGraph
    module ModelSchema
      # skip schema validation
      def self.validate_model_schema!
        return true
      end
    end
  end
end