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
            latitude: 40,
            longitude: 40,
            zoom: 10,
            image_url: 'pedriza.png')

Site.create(
            name: 'Catedral de Florencia',
            description: 'Catedral de la ciudad de Florencia con la que se inicia el Renacimiento',
            type_id: 1,
            latitude: 50,
            longitude: 35,
            zoom: 10,
            image_url: 'florencia.png')

Site.create(
            name: 'Jardin de Lineo',
            description: 'Jardin de la ciudad sueca de Uppsala donde el famoso naturalista enia su coleccion de plantas',
            type_id: 2,
            latitude: 80,
            longitude: 45,
            zoom: 10,
            image_url: 'arbol1.png')

Site.create(
            name: 'Reichstag',
            description: 'Parlamento aleman en la ciudad de Berlin',
            type_id: 1,
            latitude: 50,
            longitude: 50,
            zoom: 10,
            image_url: 'reichstag.png')

Site.create(
            name: 'Pergamo',
            description: 'Puerta del mercado de la antigua ciudad griega de Pergamo del museo arquelogico de Berlin',
            type_id: 3,
            latitude: 50,
            longitude: 50,
            zoom: 10,
            image_url: 'pergamo.png')

Viaje.create(
                site_id: 2,
                hour: 11)

Viaje.create(
                site_id: 4,
                hour: 15)

Viaje.create(
                site_id: 1,
                hour: 10)


