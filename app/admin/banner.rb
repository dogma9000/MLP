ActiveAdmin.register Banner do
  permit_params do
    permitted = [:title, :url, :start, :expires, :height, :banner_group, :banner_file]
    permitted
  end
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "articles" do
      f.input :title
      f.input :url
      f.input :banner_file, :as => :file
      f.input :start
      f.input :expires
      f.input :height
      f.input :banner_group
    end
    f.actions
  end
  show do
    attributes_table do
      row :title
      row :url
      row :banner_group
      row :start
      row :expires
      row :height
      row :banner_file do
        image_tag banner.banner_file.url(:thumb)
      end
    end
  end
end
