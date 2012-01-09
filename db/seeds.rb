# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Type.create(
            name: 'Monumento',
            description: 'Edificio de interes turistico o artistico')

Type.create(
            name: 'Naturaleza',
            description: 'Lugar al aire libre de interes natural o de recreo')

Type.create(
            name: 'Ruina',
            description: 'Lugar o resto de interes arquelogico')


Site.create(
            name: 'Pedriza',
            description: 'Magnifico valle al norte de Madrid en el Macizo Central',
            type_id: 2,
            latitude: 40.751244,
            longitude: -3.893069,
            zoom: 10,
            image_url: 'pedriza.png')

Site.create(
            name: 'Catedral de Florencia',
            description: 'Catedral de la ciudad de Florencia con la que se inicia el Renacimiento',
            type_id: 1,
            latitude: 43.783333,
            longitude: 11.25,
            zoom: 10,
            image_url: 'florencia.png')

Site.create(
            name: 'Jardin de Lineo',
            description: 'Jardin de la ciudad sueca de Uppsala donde el famoso naturalista enia su coleccion de plantas',
            type_id: 2,
            latitude: 59.862222,
            longitude: 17.633889,
            zoom: 10,
            image_url: 'arbol1.png')

Site.create(
            name: 'Reichstag',
            description: 'Parlamento aleman en la ciudad de Berlin',
            type_id: 1,
            latitude: 52.5186,
            longitude: 13.376,
            zoom: 10,
            image_url: 'reichstag.png')

Site.create(
            name: 'Pergamo',
            description: 'Puerta del mercado de la antigua ciudad griega de Pergamo del museo arquelogico de Berlin',
            type_id: 3,
            latitude: 52.521111,
            longitude: 13.396667,
            zoom: 10,
            image_url: 'pergamo.png')


Trip.create(
            name: 'Europa',
            description: 'Viaje por ciudades europeas',
            date: '2012-01-13')

Trip.create(
            name: 'Norte de Madrid',
            description: 'Excursion a la sierra de Madrid',
            date: '2012-04-13')

Selected.create(
                trip_id: 1,
                site_id: 2,
                hour: 11)

Selected.create(
                trip_id: 1,
                site_id: 4,
                hour: 15)

Selected.create(
                trip_id: 2,
                site_id: 1,
                hour: 10)

