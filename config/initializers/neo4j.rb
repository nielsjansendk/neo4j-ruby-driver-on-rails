
config = YAML.load(File.read(::Rails.root.to_s + '/config/neo4j.yml'))[::Rails.env].symbolize_keys
ENV['SEABOLT_LIB'] = config[:seabolt_path]

require "neo4j/driver"
require 'neo4j/core/cypher_session/adaptors/driver'

Neo4j::ActiveBase.current_adaptor = Neo4j::Core::CypherSession::Adaptors::Driver.new(
                                   "bolt://#{config[:username]}:#{config[:password]}@#{config[:host]}:#{config[:port]}")
