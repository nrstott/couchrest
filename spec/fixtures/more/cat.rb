class Cat < CouchRest::ExtendedDocument
  include ::CouchRest::Validation

  # Set the default database to use
  use_database TEST_SERVER.default_database

  property :name
  property :toys, :cast_as => ['CatToy'], :default => []
end

class CatToy < Hash
  include ::CouchRest::CastedModel
  include ::CouchRest::Validation

  property :name
<<<<<<< HEAD:spec/fixtures/more/cat.rb
  property :price
=======
>>>>>>> a4e6713aeb04721604553bb03475b11912a6e1ff:spec/fixtures/more/cat.rb

  validates_present :name
end