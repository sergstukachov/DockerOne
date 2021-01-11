
                                 Docker for Magento 2.4.* :

                 php-7.4/xdebug-2.9.8/ elasticserch-7.8.1/nginx /mysql-8/ 

1) Git clon your project in dir :
project_dir/nginx/www/ git clon

2) In   project_dir/docker-compose.yml
add settings: DB

3) In  project_dir/nginx/core/nginx.conf
add settings: HostName

4) In project_dir/nginx/www/app/etc/env.php for example :
'db' => [
    	'table_prefix' => '',
    	'connection' => [
        	'default' => [
            	'host' => 'mysql',
            	'dbname' => '***',
            	'username' => 'root',
            	'password' => '****',
            	'model' => 'mysql4',
            	'engine' => 'innodb',
            	'initStatements' => 'SET NAMES utf8;',
            	'active' => '1',
            	'driver_options' => [
                	1014 => false
            	]
       ]
]
	],
