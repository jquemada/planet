module SitesHelper

def getData

@selecteds = Selected.find_all_by_trip_id(params[:id])
contj=0	#contador para rellenar el array
cont=0 #necesito saber el numero de sitios
@selecteds.each do |selected|
	cont = cont+1
	end

arrayenruby = Array.new(cont){[]} 
@selecteds.each do |selected|
	@site = Site.find(selected.site_id)
	arrayenruby[contj][0] = @site.latitude
	arrayenruby[contj][1] = @site.longitude
	arrayenruby[contj][2] = @site.name
	arrayenruby[contj][3] = @site.image_url
	contj = contj+1
	end
	return arrayenruby
end

end
