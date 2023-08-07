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
  with_options hide_on: :index, visible: ->(resource:) { resource.authorization.authorize_action(:show_parents?) } do
    field :father_name, as: :text
    field :mother_name, as: :text
  end
  # add fields here
end
