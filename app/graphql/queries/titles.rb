module Queries::Titles
  include Types::BaseInterface

  graphql_name "Titles"

  field :titles, [Types::Objects::TitleTypes], "Title Type", null: true do
    argument :paging, Inputs::Base::Paging, required: false
    argument :filters, Inputs::Base::TitleFilterInput, required: false
  end

  def titles(filters: nil, paging: nil)
    Title.adult_movies_filter(filters&.adult_filter)
         .start_year_filter(filters&.start_year)
         .title_type_filter(filters&.title_type)
         .title_ids_filter(filters&.ids)
         .list(paging&.per_page, paging&.page_no).data
  end
end