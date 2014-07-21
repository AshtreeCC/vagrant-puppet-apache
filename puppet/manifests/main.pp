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
  site => 'mapaproject.dev',
  root => '/var/www/vhosts/dev.mapaproject.org',
}

addServer { 'mapa.local':
  site => 'mapaproject.local',
  root => '/var/www/vhosts/mapaproject.local',
}

addMysql { 'mapa_db':
    user => 'mapa_user',
    password => '854D#BRb'
}

addMysql { 'portals_mapa_db':
    user => 'portals_mapa_usr',
    password => 'C@P(I(7p'
}

addMysql { 'portals_pi_db':
    user => 'portals_pi_user',
    password => 'q|#F5|BM'
}

addMysql { 'local_mapa_db':
    user => 'local_mapa_user',
    password => 'qh}o{Wjp'
}


addServer { 'dea':
  site => 'padcollaboration.dev',
  root => 'var/www/vhosts/padcollaboration.org',
}

addMysql { 'dea_db':
    user => 'dea_user',
    password => 'Zu|TXx6w'
}

