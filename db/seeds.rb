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
            latitude:-13.163956,
            longitude:  -72.545993,
            zoom: 10,
            image_url: 'Machu-Picchu.jpg', 
image_file_name:'Machu-Picchu.jpg')


Site.create(
            name: 'Playa Jardín',
            description: 'Una de las playas más bonitas de Tenerife, isla canaria .... ',
            type_id: 2,
            latitude: 28.42612788973884,
            longitude:  -16.5289306640625,
            zoom: 10,
            image_url: 'Playa_Jardin_Tenerife_2005.png', 
image_file_name:'Playa_Jardin_Tenerife_2005.png')

Site.create(
            name: 'La Pedriza',
            description: 'Magnifico valle al norte de Madrid en el Macizo Central',
            type_id: 6,
            latitude: 40.699901911003046, 
            longitude: -3.8335418701171875,
            zoom: 10,
            image_url: 'pedriza2-m.png', 
image_file_name:'pedriza2.m.png')

Site.create(
            name: 'Pinzón Town',
            description: 'Pueblo de la provincia de Sevilla situado en la comunidad de Andalucia , perteneciente al ayuntamiento de Utrera ',
            type_id: 5,
            latitude: 37.108312670488736, 
            longitude: -6.023082733154297,
            zoom: 10,
            image_url: 'montaña.jpg', 
image_file_name:'montaña.jpg')


Site.create(
            name: 'Ciudad Real',
            description: 'Los orígenes de ciudad real, se remontan, probablemente, a la época romana, como ciertos historiadores aventuran que la identifican con la antigua sisapum oretanorum, aunque esta teoría nunca ha podido ser demostrada.',
            type_id: 4,
            latitude: 38.986108, 
            longitude: -3.927252,
            zoom: 10,
            image_url: 'ciudad-real.jpg', 
image_file_name:'ciudad-real.jpg')
Site.create(
            name: 'El Carmen',
            description: 'País México Estado Quintana Roo En tiempos prehispánicos Playa del Carmen se llamaba Xaman Há (Maya: Agua del Norte) y era un punto de partida de los mayas en su peregrinaje al santuario de Ixchel en Cozumel. El primer asentamiento moderno data de principios del siglo XX cuando allí se ubicó una comunidad de pescadores, productores de cocoteros y del árbol del chicle. Hasta mediados de los años ochenta Playa del Carmen era un pequeño pueblo de paso con menos de 1500 habitantes, pero en las últimas dos décadas se ha transformado vertiginosamente al ritmo del crecimiento del turismo. ',
            type_id: 2,
            latitude: 20.628505,
            longitude: -87.079752,
            zoom: 10,
            image_url: 'playa_el_carmen.jpg', 
image_file_name:'playa_el_carmen.jpg')

Site.create(
            name: 'Florencia',
            description: 'Catedral de la ciudad de Florencia con la que se inicia el Renacimiento',
            type_id: 4,
            latitude: 43.768732,
            longitude: 11.256901,
            zoom: 10,
            image_url: 'florencia.jpg',
image_file_name:'florencia.jpg')


Site.create(
            name: 'Catedral de Florencia',
            description: 'Catedral de la ciudad de Florencia con la que se inicia el Renacimiento',
            type_id: 1,
            latitude: 43.773448978732596, 
            longitude: 11.251373291015625,
            zoom: 10,
            image_url: 'florencia.jpg',
image_file_name:'florencia.jpg')

Site.create(
            name: 'Jardin de Lineo',
            description: 'Jardin de la ciudad sueca de Uppsala donde el famoso naturalista enia su coleccion de plantas',
            type_id: 6,
            latitude: 59.843435102680886, 
            longitude: 17.67974853515625,
            zoom: 10,
            image_url: 'arbol1.png',
image_file_name:'arbol1.png')

Site.create(
            name: 'Reichstag',
            description: 'Parlamento aleman en la ciudad de Berlin',
            type_id: 1,
            latitude: 52.49610727608934,
            longitude:  13.410229682922363,
            zoom: 10,
            image_url: 'reichstag.png', 
image_file_name:'reichstag.png')

Site.create(
            name: 'Cristo de Rio de Janeiro',
description: 'Río de Janeiro (fundada como São Sebastião do Rio de Janeiro, «San Sebastián del Río de Enero», pronunciando como ˌsɐ̃w̃ seˌbaʃtʃiˈɐ̃w̃ du ˌxi.u dʒi ʒaˈnejɾu en la variedad local de portugués) o popularmente solo llamado Rio es la capital del estado de Río de Janeiro, ubicada en el sureste de Brasil. Fue la capital del Imperio de Brasil desde 1822, cuando la nación declaró su independencia de Portugal y conservó ese rango hasta la inauguración de Brasilia, en 1960. Es la segunda ciudad más poblada de Brasil, ostenta el mayor tráfico internacional de turismo del país y es el primer destino turístico de América Latina así como la primera ciudad Olímpica de América del Sur.', 
type_id: 1, 
latitude: -22.903539, 
longitude: -43.209587, 
zoom: 3,
image_file_name: 'Cristo-RioJaneiro.jpg')



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
                site_id: 8,
                hour: 11)

Selected.create(
                trip_id: 1,
                site_id: 10,
                hour: 15)

Selected.create(
                trip_id: 2,
                site_id: 1,
                hour: 10)
Selected.create(
                trip_id: 2,
                site_id: 6,
                hour: 15)


