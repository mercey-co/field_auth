class ContactResource < Avo::BaseResource
  self.authorization_policy = Avo::ContactPolicy
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :age, as: :number
  field :comments, as: :text, visible: ->(resource:) { resource.authorization.authorize_action(:show_comments?) }
  # add fields here
end
