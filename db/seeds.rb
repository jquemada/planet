# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Type.create( name: 'Monumento', description: 'Edificio de interes turistico o artistico')

Type.create( name: 'Playa', description: "Para los sitios que contengan o estén asociados a playas" )

Type.create( name: 'Paisaje', description: 'Para los paisajes')
Type.create(
            name: 'Historia',
            description: 'Para tipos de sitios relacionados con la historia.')

Type.create(
            name: 'Montaña', description:'Para los sitios que contengan o estén asociados a montañas' )
Type.create(
            name: 'Naturaleza',
            description: 'Lugar al aire libre de interes natural o de recreo')

Type.create(
            name: 'Ruina',
            description: 'Lugar o resto de interes arquelogico')

Site.create(
            name: 'Machu Picchu',
            description: 'es el nombre contemporáneo que se da a una llaqta (antiguo poblado andino inca) de piedra construida principalmente a mediados del siglo XV en el promontorio rocoso que une las montañas Machu Picchu y Huayna Picchu en la vertiente oriental de los Andes Centrales, al sur del Perú.',
            type_id: 1,
            latitude: 43,
            longitude: 42,
            zoom: 10,
            image_url: 'Machu-Picchu.jpg')


Site.create(
            name: 'Playa Jardín',
            description: 'Una de las playas más bonitas de Tenerife, isla canaria .... ',
            type_id: 2,
            latitude: 40,
            longitude: 40,
            zoom: 10,
            image_url: 'Playa_Jardin_Tenerife_2005.png')

Site.create(
            name: 'Pedriza',
            description: 'Magnifico valle al norte de Madrid en el Macizo Central',
            type_id: 6,
            latitude: 40,
            longitude: 40,
            zoom: 10,
            image_url: 'pedriza2-m.png')

Site.create(
            name: 'Pinzón Town',
            description: 'PINZON es un pueblo de la provincia de Sevilla situado en la comunidad de Andalucia , perteneciente al ayuntamiento de Utrera ',
            type_id: 5,
            latitude: 11,
            longitude: 34,
            zoom: 10,
            image_url: 'montaña.jpg')


Site.create(
            name: 'Ciudad Real',
            description: 'Los orígenes de ciudad real, se remontan, probablemente, a la época romana, como ciertos historiadores aventuran que la identifican con la antigua sisapum oretanorum, aunque esta teoría nunca ha podido ser demostrada.',
            type_id: 4,
            latitude: 55,
            longitude: 25,
            zoom: 10,
            image_url: 'ciudad-real.jpg')
Site.create(
            name: 'El Carmen',
            description: 'País México Estado Quintana Roo En tiempos prehispánicos Playa del Carmen se llamaba Xaman Há (Maya: Agua del Norte) y era un punto de partida de los mayas en su peregrinaje al santuario de Ixchel en Cozumel. El primer asentamiento moderno data de principios del siglo XX cuando allí se ubicó una comunidad de pescadores, productores de cocoteros y del árbol del chicle. Hasta mediados de los años ochenta Playa del Carmen era un pequeño pueblo de paso con menos de 1500 habitantes, pero en las últimas dos décadas se ha transformado vertiginosamente al ritmo del crecimiento del turismo. ',
            type_id: 2,
            latitude: 34,
            longitude: 56,
            zoom: 10,
            image_url: 'playa_el_carmen.jpg')


Site.create(
            name: 'Catedral de Florencia',
            description: 'Catedral de la ciudad de Florencia con la que se inicia el Renacimiento',
            type_id: 1,
            latitude: 50,
            longitude: 35,
            zoom: 10,
            image_url: 'florencia.jpg')

Site.create(
            name: 'Jardin de Lineo',
            description: 'Jardin de la ciudad sueca de Uppsala donde el famoso naturalista enia su coleccion de plantas',
            type_id: 6,
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


Trip.create(
            name: 'Europa',
            description: 'Viaje por ciudades europeas',
            date: '2012-01-13')

Trip.create(
            name: 'Sudamérica',
            description: 'Viaje para recorrer sudamérica',
            date: '2012-04-13')

Selected.create(
                trip_id: 1,
                site_id: 7,
                hour: 11)

Selected.create(
                trip_id: 1,
                site_id: 9,
                hour: 15)

Selected.create(
                trip_id: 2,
                site_id: 1,
                hour: 10)
Selected.create(
                trip_id: 2,
                site_id: 6,
                hour: 15)


