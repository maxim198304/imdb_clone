ActiveAdmin.register Movie do
  permit_params :title, :description, :rating, :category, :image, :user_id

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs "Movies" do
      f.input :title
      f.input :description
      f.input :rating
      f.input :category
      f.input :user
      f.input :image, as: :file
    end         # builds an input field for every attribute
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
