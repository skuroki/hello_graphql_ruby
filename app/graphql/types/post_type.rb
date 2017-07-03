Types::PostType = GraphQL::ObjectType.define do
  name "Post"
  field :title, types.String
  field :body, types.String
  field :comments, types[Types::CommentType]
end
