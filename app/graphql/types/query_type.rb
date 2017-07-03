Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :post, Types::PostType do
    argument :id, !types.ID
    resolve ->(obj, args, ctx) {
      Post.find(args["id"])
    }
  end

  field :posts, types[Types::PostType] do
    resolve ->(obj, args, ctx) {
      Post.all
    }
  end
end
