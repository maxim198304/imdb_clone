ActiveAdmin.register Category do
  permit_params :name

  form do |f|
    f.semantic_errors
    f.inputs "Category" do
      f.input :name
    end
    f.actions
  end
end
