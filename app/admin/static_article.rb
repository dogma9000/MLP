ActiveAdmin.register StaticArticle do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  permit_params do
    permitted = [:title, :content, :permalink]
    permitted
  end
  form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "articles" do
        f.input :title
        f.input :content
        f.input :permalink
      end
    f.actions
  end
end
