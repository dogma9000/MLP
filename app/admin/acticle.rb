ActiveAdmin.register Acticle do


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
    permitted = [:title, :content, :image]
    permitted
  end
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "articles" do
      f.input :title
      f.input :content
      f.input :image, :as => :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :content
      row :image do
        image_tag acticle.image.url(:thumb)
      end
    end
  end
  index do
    selectable_column
    column :id
    column :title
    column :created_at
    actions
  end
end
