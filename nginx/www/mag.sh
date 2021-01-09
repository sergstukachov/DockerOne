#!/bin/bash


bin/magento setup:upgrade
bin/magento setup:static-content:deploy -f
bin/magento setup:di:compile
bin/magento cache:flush

chmod -R 0777 var 
chmod -R 0777 pub/static 
chmod -R 0777 generated
chmod -R 0777 pub/media
