module Queries::Actor
  include Types::BaseInterface

  graphql_name 'Actor'

  field :actors, [Types::Objects::ActorTypes], description: 'Returns a list of actors', null: true do
    argument :paging, Inputs::Base::Paging, required: false
  end

  def actors(paging: nil)
    Actor.all.list(paging&.per_page, paging&.page_no).data
  end
end