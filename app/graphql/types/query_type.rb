Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

field :customer do
    type Types::CustomerType
    argument :id, !types.ID
    description "Find a customer by ID"
    resolve ->(obj, args, ctx) {
      Customer.find_by(id: args[:id])
    }
  end

  field :location do
    type Types::LocationType
    argument :id, !types.ID
    description 'Find a Location by ID'
    resolve ->(obj, args, ctx) {
      Location.find_by(id: args[:name])
    }
  end

  field :reservations_from_customer do
    type GraphQL::ListType.new(of_type: Types::ReservationType)
    argument :name, !types.String
    description 'Find reservations from a specific Customer'
    resolve ->(obj, args, ctx) {
      Customer.find_by(name: args[:name]).reservations
    }
  end
end