ActiveAdmin.register Word do

  form do |f|
    f.inputs
    f.inputs do
      f.input :categories, :as => :check_boxes
    end
    f.buttons
  end

end
