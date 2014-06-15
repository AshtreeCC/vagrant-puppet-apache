stage { 'prepare': 
	before => Stage['main'] 
}

class {
        'bootstrap':      stage => main;
	'apache':         stage => main;
        'php':            stage => main;
	'mysql':          stage => main;
}

addServer { 'mapa':
  site => 'dev.mapaproject.org',
  root => '/vagrant/www/dev.mapaproject.org',
}

addMysql { 'mapa_db':
    user => 'mapa_user',
    password => '854D#BRb'
}
