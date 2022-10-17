ActiveAdmin.register User do
  permit_params :email, :password

  filter :email

  show do
    attributes_table do
      row :email
    end
  end

  form do |f|
    f.semantic_errors
    f.inputs "Movies" do
      f.input :email
      f.input :password
    end
    f.actions
  end
end
