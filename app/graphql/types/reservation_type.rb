Types::ReservationType = GraphQL::ObjectType.define do
  name "Reservation"
  field :time, types.String
  field :seats, types.Int
  field :customer, Types::CustomerType
  field :location, Types::LocationType
end
