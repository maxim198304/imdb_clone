ActiveAdmin.register Movie do
  permit_params :title, :description, :rating, :category_id, :image

  form do |f|
    f.semantic_errors
    f.inputs "Movies" do
      f.input :title
      f.input :description
      f.input :rating
      f.input :category
      f.input :image, as: :file
    end
    f.actions
  end
end
