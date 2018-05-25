Types::LocationType = GraphQL::ObjectType.define do
  name "Location"
  field :name, types.String
  field :city, types.String
  field :seats, types.Int
end
