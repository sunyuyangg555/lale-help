class AddAddressPartsToLocations < ActiveRecord::Migration
  def up
    add_column    :locations, :geocode_data, :json
    rename_column :locations, :address, :geocode_query
    remove_column :locations, :name

    Location.all.each do |location|
      update_data(location)
    end
  end

  def down
    add_column :locations, :name, :string
    rename_column :locations, :geocode_query, :address
    remove_column :locations, :geocode_data, :json
  end

  def update_data loc
    resp = Geocoder.search(loc.geocode_query).first
    if resp
      loc.geocode_data = resp.data
      loc.save
    end
  end
end
