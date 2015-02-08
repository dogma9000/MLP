ActiveAdmin.register UploadedFile do
  permit_params do
    permitted = [:type, :user, :title, :description, :file, :is_public, :is_checked, :type_id, :user_id]
    permitted
  end
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "articles" do
      f.input :type
      f.input :user
      f.input :title
      f.input :description
      f.input :file, :as => :file
      f.input :is_public
      f.input :is_checked
    end
    f.actions
  end
  index do
    selectable_column
    column :id
    column :is_public
    column :is_checked
    column :created_at
    column "file link" do |uploaded_file|
      link_to "link", uploaded_file.file.url
    end
    actions
  end
  show do
    attributes_table do
      row :id
      row :type
      row :user
      row :title
      row :description
      row :is_public
      row :is_checked
      row :file do
        link_to uploaded_file.file.url
      end
      row :created_at
      row :updated_at
    end
  end


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


end
