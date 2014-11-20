ActiveAdmin.register Category do

  permit_params :name, :description, :price, :featured, :stock_quantity

end
