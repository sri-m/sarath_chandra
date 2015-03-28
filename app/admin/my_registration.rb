ActiveAdmin.register MyRegistration do

form do |f|
      f.inputs do
    f.input :name
    #f.input :blood_group, :as => :select, :collection => Group.pluck(:blood_type)
    f.input :email
    f.input :category, :as => :select, collection: Order.pluck(:order_name)
    f.input :cell
    f.input :gender, :as => :radio, :collection => [:Male, :Female]
    f.input :subject
    actions
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
