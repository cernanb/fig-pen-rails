ActiveAdmin.register Pin do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :edition_size, :company_id, :figpin_id, :photo
  form partial: 'form'
  show do
    attributes_table do
      row :name
      row :figpin_id
      row :photo do |ad|
        image_tag url_for(ad.photo)
      end
    end
  end
  
end
