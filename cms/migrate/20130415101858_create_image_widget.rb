class CreateImageWidget < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'ImageWidget',
      type: 'publication',
      title: 'Widget: Image',
      attributes: [
        {:name=>"sort_key", :type=>:string, :title=>"Sort key"},
        {:name=>"caption", :type=>:string, :title=>"Caption"},
        {:name=>"link_to", :type=>:linklist, :title=>"Link", :max_size=>1},
        {:name=>"source", :type=>:linklist, :title=>"Source", :max_size=>1},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end