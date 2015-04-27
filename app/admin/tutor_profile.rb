ActiveAdmin.register TutorProfile do

  menu :priority => 4

  actions :all, :except => [:new,:edit,:destroy]

  index do
    column :id
    column :user
    column :degree_subject
    column :teaching_subject
    column :teaching_subject_2
    column :teaching_subject_3
    column :subject_level
    actions
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
