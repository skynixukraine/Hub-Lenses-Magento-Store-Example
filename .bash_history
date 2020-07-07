ls
history 
php bin/magento cache:flush
php bin/magento cache:clean
php bin/magento indexer:reindex
mkdir session
ll -d session
ls
php bin/magento deploy:mode:show
php bin/magento 
php bin/magento config:show 
php bin/magento config:set dev/js/minify_files 0
php bin/magento config:set dev/css/minify_files 0
php bin/magento deploy:mode:set production
ls -l pub/static/adminhtml/Magento/backend/en_US/requirejs-config.js
cat pub/.htaccess 
cd pub/
pwd
vi index.php 
ls -l 
cat static.php 
nano static
vi static.php 
cd ..
php bin/magento config:set dev/static/sign 0
php bin/magento deploy:mode:set production
ls
cat pub/index.php 
vi pub/index.php 
exit
ll /var/log/nginx/
tail -f /var/log/nginx/hublenses_prd.access.log
whoami 
tail -f /var/log/nginx/hublenses_prd.access.log
pwd
ll
vim phpinfo.php 
mv phpinfo.php pub/
ls
git status
git diff phpinfo.php
ls
ls -l
ді
ls
git status
crontab -l
ls -l var/log/
pwd
php -v
/usr/bin/php -v
/usr/bin/php /var/www/vhosts/hublenses.com/bin/magento cron:run
crontab -e
crontab -l
exit
ll app/code/local/Mage/Core/Model/Session.php
ping hublenses.com
php -i|grep max_input_vars
php -i|grep php.ini
ll
vim p.php
mv p.php phpinfo.php
history |grep clean
php bin/magento cache:clean
php bin/magento cache:flush
ls
nano pub/index.php 
vi pub/index.php 
git status
git remote -v
rm -rf .git
rm invoice2019-02-07_14-35-22.pdf invoice2019-02-07_14-35-22.pdfinvoice2019-02-07_14-35-22.pdf
rm -rf hublense_mage2.sql 
exit
vi pub/index.php 
exit
cd /var/www/vhosts/hublenses.com
php bin/magento cache:flush
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2_70 > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_70_BKP_02092019.sql
php bin/magento cache:flush
php bin/magento module:disable MageWorx_CurrencySwitcher
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento module:enable MageWorx_CurrencySwitcher
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento module:disable MageWorx_CurrencySwitcher
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento module:status MageWorx_CurrencySwitcher
php bin/magento module:status
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento module:enable MageWorx_CurrencySwitcher
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento module:status
php bin/magento cache:flush
zip bin.zip bin
cd /var/www/vhosts/hublenses.com/app/code/MageWorx
cd /var/www/vhosts/hublenses.com/app/code
zip MageWorx.zip MageWorx
zip -r MageWorx.zip /var/www/vhosts/hublenses.com/app/code/MageWorx/
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2_70 > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_70_BKP_02092019_04_03_PM.sql
php bin/magento setup:upgrade
cd /var/www/vhosts/hublenses.com
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento deploy:mode:set production
php bin/magento cache:flush
php bin/magento deploy:mode:set production
cd /var/www/vhosts/hublenses.com/
php bin/magento setup:upgrade
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento module:disable MageWorx_CurrencySwitcher
php bin/magento deploy:mode:set developer
php bin/magento cache:flush
mysqldump -u hublense_mage2 -p hublense_mage2 > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_70_BKP_02092019_04_50_PM.sql
cd /var/www/vhosts/hublenses.com
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento cache:flush
mysql -u hublense_mage2 -p hublense_mage2_70 < /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_70_BKP_02092019_04_03_PM.sql
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
history |grep clean
php bin/magento cache:clean
php bin/magento cache:flush
history |grep sta
php bin/magento setup:static-content:deploy -f
vim app/etc/env.php 
mysql
history |grep mysql
vim app/etc/env.php 
ll app/etc/env.php
vim app/etc/env.php 
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento cache:clean
php bin/magento cache:flush
php bin/magento setup:static-content:deploy -f
tail -f /var/log/nginx/hublenses_prd.access.log
ll var/log
tail -f var/log/system.log 
mysql
mysql -u hublense_mage2 -p hublense_mage2_70 < /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_70_BKP_02092019_04_03_PM.sql 
vim app/etc/env.php 
mysql -u hublense_mage2 -p hublense_mage2_70 < /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_70_BKP_02092019_04_03_PM.sql 
vim app/etc/env.php 
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento cache:clean
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2_70 > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_70_BKP_10092019.sql
cd /var/www/vhosts/hublenses.com/app/code/Itoris/
zip -r Itoris.zip /var/www/vhosts/hublenses.com/app/code/Itoris/
cd /var/www/vhosts/hublenses.com/pub/static
zip -r static.zip /var/www/vhosts/hublenses.com/pub/static
cd /var/www/vhosts/hublenses.com
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
vim app/etc/env.php 
history |grep clean
history |grep static
php bin/magento cache:clean
php bin/magento setup:static-content:deploy -f
php bin/magento cache:clean
vim app/etc/env.php 
php bin/magento cache:clean
php bin/magento setup:static-content:deploy -f
php bin/magento cache:clean
php bin/magento setup:static-content:deploy -f
vim app/etc/env.php 
php bin/magento setup:static-content:deploy -f
php bin/magento cache:clean
ll
ls
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2_70 > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_70_BKP_12092019.sql
php bin/magento admin:user:create --admin-user=tarunv --admin-password=ebf7e04a9947 --admin-email=tarunshreejiinfosoft@gmail.com --admin-firstname=Tarun --admin-lastname=Patel
php bin/magento cache:flush
vim app/etc/env.php 
mysql 
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2_12 > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_12_BKP_12092019.sql
php bin/magento module:disable Ebizmarts_MailChimp
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
cd /var/www/vhosts/hublenses.com
php bin/magento cache:flush
mysqldump -u hublense_mage2 -p hublense_mage2_12 > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_12_BKP_12092019.sql
php bin/magento cache:flush
php bin/magento indexer:reindex
php bin/magento cache:flush
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2_12 > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_12_BKP_12092019.sql
php bin/magento cache:flush
ls
ls var/
ls var/log
tail -f var/log/system.log 
ll
ll pub/
history |grep ph[
history |grep php
 php bin/magento cache:clean
vim app/etc/env.php 
history |grep mysql
mysql -u hublense_mage2 -p hublense_mage2_12
vim app/etc/env.php 
ll var/log
ddate
date
tail -f var/log/exception.log 
 php bin/magento cache:clean
date
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2 > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_BKP_25092019.sql
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento cache:flush
php bin/magento cache:clean
mysql -u hublense_mage2 -p hublense_mage2_12 < /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_BKP_25092019.sql
php bin/magento cache:flush
mysql -u hublense_mage2 -p hublense_mage2_12 < /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_12_BKP_12092019.sql
php bin/magento cache:flush
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2_12_corrupt > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_12_BKP_26092019.sql
cd cd /var/www/vhosts/hublenses.com
ls -l
git branch
php bin/magento deploy:mode:show
php bin/magento setup:upgrade;php bin/magento setup:static-content:deploy
php bin/magento deploy:mode:set developer
php bin/magento setup:upgrade;php bin/magento setup:static-content:deploy -f
php bin/magento cache:clean
php bin/magento cache:flush
php bin/magento setup:static-content:deploy -f en_GB
php bin/magento cache:flush
ls -l
php bin/magento cache:clean
php bin/magento indexer:info
php bin/magento setup:upgrade;php bin/magento setup:static-content:deploy -f
php bin/magento setup:static-content:deploy -f en_GB
php bin/magento setup:upgrade
php bin/magento deploy:mode:set production
php bin/magento setup:static-content:deploy -f en_GB
php bin/magento deploy:mode:set developer
php bin/magento setup:upgrade;php bin/magento setup:static-content:deploy -f
php bin/magento deploy:mode:set production
php bin/magento deploy:mode:show
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2_12_corrupt > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_12_corrupt_BKP_16032020.sql
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
zip Sendinblue.zip /var/www/vhosts/hublenses.com/app/code/Sendinblue/
cd /var/www/vhosts/hublenses.com/app/code/Sendinblue/
zip -r Sendinblue.zip /var/www/vhosts/hublenses.com/app/code/Sendinblue/
cd /var/www/vhosts/hublenses.com
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento indexer:reindex
php bin/magento cache:flush
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2_12_corrupt > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_12_corrupt_BKP_17032020.sql
php bin/magento cache:flush
php bin/magento module:disable Sendinblue_Sendinblue
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento module:enable Sendinblue_Sendinblue
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2_12_corrupt > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_12_corrupt_BKP_25032020.sql
php bin/magento cache:flush
php bin/magento setup:upgrade
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
cd /var/www/vhosts/hublenses.com
mysqldump -u hublense_mage2 -p hublense_mage2_12_corrupt > /var/www/vhosts/hublenses.com/kbn-da/hublense_mage2_12_corrupt_BKP_27032020.sql
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:flush
php bin/magento indexer:reindex
php bin/magento cache:flush
php bin/magento indexer:reindex
php bin/magento cache:flush
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento indexer:reindex
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ssh hublenses.com@157.175.137.211 -p 8349
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ssh hublenses.com@157.175.137.211 -p 8349
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ssh hublenses.com@157.175.137.211 -p 8349
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ssh hublenses.com@157.175.137.211 -p 8349
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
ssh hublenses.com@157.175.137.211 -p 8349
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ssh hublenses.com@157.175.137.211 -p 8349
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exuphp bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:exit
exit
ssh hublenses.com@157.175.137.211 -p 8349
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ssh hublenses.com@157.175.137.211 -p 8349
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ssh hublenses.com@157.175.137.211 -p 8349
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:flush
php bin/magento indexer:reindex
php bin/magento cache:flush
exit
ssh hublenses.com@157.175.137.211 -p 8349
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:flush
php bin/magento indexer:reindex
php bin/magento cache:flush
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ssh hublenses.com@157.175.137.211 -p 8349
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exir
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache exit
exit
php bin/magento cache:flush
php bin/magento indexer:reindex
php bin/magento cache:flush
exit
php bin/magento cache:flush
php bin/magento indexer:reindex
php bin/magento cache:flush
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ls -l
cp sitemap.xml pub/.
rm pub/sitemap.xml 
ls -l
ls -l pub/
exit
ls -l
ls -l pub/
df -h
bash
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ls -l
pwd
exit
