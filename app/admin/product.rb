ActiveAdmin.register Product do

  permit_params :name, :description, :price, :featured, :stock_quantity
 
end
