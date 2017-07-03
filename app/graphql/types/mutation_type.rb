Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :addPost, Types::PostType do
    argument :title, !types.String
    argument :body, !types.String

    resolve ->(obj, args, ctx) {
      Post.create! args.to_h
    }
  end
end
