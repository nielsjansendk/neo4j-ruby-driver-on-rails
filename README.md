# README

This is an exmple of how to use the new neo4j-ruby-driver with neo4j on rails.

You will need to install seabolt on you system to make this work. 
There are instructions [here](https://github.com/neo4j-drivers/seabolt). For Mac I recommend
using this [homebrew tap](https://github.com/michael-simons/homebrew-seabolt) 
instead of the instructions on that page.

This example uses:

* Ruby version: 2.6.5

* Rails version: 6.0.0

* Neo4j version: 9.6.0

* Neo4j ruby driver version: 0.1.5

To build you own rails app from scratch:

* rails new myapp -m http://neo4jrb.io/neo4j/neo4j.rb -O

* Create `config/neo4j.yml` from the example in this app

* Modify `neo4j.yml` with your own settings

* Copy `config/initializers/neo4j.rb` from this app to your own app

* Start a rails console (`bundle exec rails c`) and write `Neo4j::ActiveBase.current_session`. 
The result should contain the line that looks like this:
```
@adaptor=#<Neo4j::Core::CypherSession::Adaptors::Driver:0x00007fbbda509888 
@uri=#<URI::Generic bolt://neo4j:password@localhost:7687>
```