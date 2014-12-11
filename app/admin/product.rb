ActiveAdmin.register Product do

  permit_params :name, :description, :price,
                :featured, :stock_quantity, :image, :category_id

  form html: { multipart: true } do |f|
    f.inputs 'Product Details' do
      f.input :name
      f.input :category
      f.input :description
      f.input :price
      f.input :featured
      f.input :stock_quantity
      f.input :image
    end
    f.actions
  end

end
