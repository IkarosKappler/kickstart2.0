class CreateGoogleMapsWidget < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'GoogleMapsWidget',
      type: 'publication',
      title: 'Widget: GoogleMaps',
      attributes: [
        {:name=>"address", :type=>:string, :title=>"Address"},
        {:name=>"sort_key", :type=>:string, :title=>"Sort key"},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end