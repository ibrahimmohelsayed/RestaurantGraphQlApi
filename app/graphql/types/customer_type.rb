Types::CustomerType = GraphQL::ObjectType.define do
  name "Customer"
  field :name, types.String
end
