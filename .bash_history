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
ls -l
git status
ls -la
ls -la .gitignore 
git init
ls -l ../
ls -la ../
git remote set-url origin ssh://git@bitbucket.skynix.co/hub/hublenses.com-magento-2-repo.git
git remote add origin ssh://git@bitbucket.skynix.co/hub/hublenses.com-magento-2-repo.git
git push origin --all
id
ls -l
ssh-keygen
cat ~/.ssh/id_rsa.pub 
git push origin --all
git status
git add .
git commit -m "Server stuff"
git config --global user.email "admin@skynix.co"
git config --global user.name "Oleksii Prozhoha"
git commit -m "Server stuff"
git push origin master
git push origin master --force
git pull
git pull origin master
php bin/magento 
php bin/magento maintenance:enable
php bin/magento setup:upgrade
php bin/magento deploy:mode:set production
php bin/magento setup:di:compile
git log
git checkout ccb4e2
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e5325b19b381bfd88ce90a5ddb7823406b2a38cff6bb704b0acc289a09c8128d4a8ce2bbafcd1fcbdc38666422fe2806') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
php bin/magento deploy:mode:set productioncomposer require mageplaza/module-google-recaptcha
composer.p require mageplaza/module-google-recaptcha
wget https://getcomposer.org/download/2.0.0-alpha2/composer.phar
php composer.phar require mageplaza/module-google-recaptcha
php bin/magento 
php bin/magento module:status
php bin/magento module:disable Mageplaza_GoogleRecaptcha
php bin/magento module:status
gti status
git status
git reset --hard
php bin/magento 
php bin/magento setup:upgrade
git status
rm -rf var/cache/*
php bin/magento setup:upgrade
php bin/magento deploy:mode:set production
php bin/magento
php bin/magento maintenance:disable
ls -l
su hublenses.com
id
composer require mageplaza/module-google-recaptcha
php composer.phar require mageplaza/module-google-recaptcha
cat composer.json 
pwd
ls -l /home/hublense/mageworx
mkdir /home/hublense/mageworx
sudo su
pwd
mkdir ../mageworx
ls -l
cp -r vendor/mageworx .
pwd
nano composer.json 
vi composer.json 
php composer.phar require mageplaza/module-google-recaptcha
rm -rf vendor/cloudflare/cloudflare-magento
php composer.phar remove cloudflare/cloudflare-magento
php bin/magento 
rm -rf generated/*
php bin/magento 
nano app/etc/config.php 
vi app/etc/config.php 
php bin/magento 
php bin/magento setup:di:compile
mv app/code/CloudFlare .
php bin/magento setup:di:compile
php bin/magento deploy:mode:set production
php bin/magento maintenance:enable
php bin/magento deploy:mode:set production
php bin/magento maintenance:disable
php bin/magento cache:flush
php bin/magento
admin:user:create
php bin/magento admin:user:create
php bin/magento module:status
php bin/magento module:enable Mageplaza_Core Mageplaza_GoogleRecaptcha
php bin/magento setup:upgrade
php bin/magento maintenance:enable
php bin/magento deploy:mode:set production
php bin/magento maintenance:disable
php bin/magento cache:flush
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
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ab
ab -c 10 -n 1000 https://online-hautarzt.de/
curl https://online-hautarzt.de/
ab -c 10 -n 1000 https://online-hautarzt.de/
abі -c 10 -n 1000 https://online-hautarzt.de/
abs -c 10 -n 1000 https://online-hautarzt.de/
ls
cd /
ls -l
cd opt/
npm install -g loadtest
cd opt/
ab -n 100 -c 10 http://18.156.81.52/
ab -n 1000 -c 30 http://18.156.81.52/
crontab -e
exi
exit
exit
crontab -l
crontab -e
exit
ls -l
cd /home/
ls -l
crontab -l
sudo su
crontab -e
pwd
nano curltest.sh 
vi curltest.sh 
ls -l
cd centos/
ls-l
cd germain/
ls -l
exit
nano curltest.sh 
vi curltest.sh 
chmod +x curltest.sh 
pwd
crontab -e
crontab -l
/var/www/vhosts/hublenses.com/curltest.sh https://online-hautarzt.net/wp-json/wp/v2/posts?limit=100 500
vi curltest.sh 
echo "" > curltest.sh 
vi curltest.sh 
/var/www/vhosts/hublenses.com/curltest.sh https://online-hautarzt.net/wp-json/wp/v2/posts?limit=100 500
/var/www/vhosts/hublenses.com/curltest.sh https://online-hautarzt.net/wp-json/wp/v2/posts?limit=100 500 &&
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
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
ll var/log
tail -f var/log/system.log
history |grep cache
rm -rf var/cache/*
php bin/magento cache:flush
php bin/magento cache:clean
exit
crontab -e
ll /var/log/mysql/
ll /var/log/mysql/mariadb-slow.log 
tail -f /var/log/mysql/mariadb-slow.log
ll /var/log/mysql/mariadb-slow.log 
tail -f /var/log/mysql/mariadb-slow.log
crontab -l
crontab -e
crontab -l
ls -l
htop
pwd
apt 
yum
yum update
sudo yum update
ls -l
top
cat /etc/nginx/sites-enabled/hublenses.com.conf 
tail -n 100 -f  /var/log/nginx/hublenses_prd.access.log
ls -l
./bin/magento 
tail -n 100 -f  /var/log/nginx/hublenses_prd.access.log
ls -l
cat app/etc/env.php 
mysql -u hublense_mage2 -p
./bm
./bin/magento 
cat app/etc/env.php 
tail -n 100 -f  /var/log/nginx/hublenses_prd.access.log
curl -X POST /admin_14x1fde/newsletter/subscriber/index/key/7e8a6f0a150a5b1c5920b64a51214b0ff18244571412851082a8b69438df9373/sort/subscriber_id/dir/desc/?ajax=true&isAjax=true
curl -X POST https://hublenses.com/admin_14x1fde/newsletter/subscriber/index/key/7e8a6f0a150a5b1c5920b64a51214b0ff18244571412851082a8b69438df9373/sort/subscriber_id/dir/desc/?ajax=true&isAjax=true
curl -Ш -X POST https://hublenses.com/admin_14x1fde/newsletter/subscriber/index/key/7e8a6f0a150a5b1c5920b64a51214b0ff18244571412851082a8b69438df9373/sort/subscriber_id/dir/desc/?ajax=true&isAjax=true
curl -I -X POST https://hublenses.com/admin_14x1fde/newsletter/subscriber/index/key/7e8a6f0a150a5b1c5920b64a51214b0ff18244571412851082a8b69438df9373/sort/subscriber_id/dir/desc/?ajax=true&isAjax=true
./bin/magento module:status
./bin/magento module:
tail -n 100 -f  /var/log/nginx/hublenses_prd.access.log
ps aux
df -h
crontab -l
crontab -e
ps aux
crontab -l
less var/log/magento.cron.log
bin/magento cron:run
free -h
mysqlchek
mysqlcheck
cat app/etc/n
cat app/etc/env.php 
mysqlcheck --database hublense_mage2_12_corrupt
mysqlcheck --database=hublense_mage2_12_corrupt
mysqlcheck hublense_mage2_12_corrupt
mysqlcheck hublense_mage2_12_corrupt --user hublense_mage2 --password 
cat /etc/my.cnf.d/server.cnf 
cat /etc/my.cnf
cat /etc/my.cnf.d/mysql-clients.cnf 
cat /etc/my.cnf.d/client.cnf
cat /etc/my.cnf.d/tokudb.cnf 
cat /etc/my.cnf.d/server.cnf 
nano /etc/my.cnf.d/server.cnf 
vi /etc/my.cnf.d/server.cnf 
./bin/magento 
./bin/magento dev:query-log:enable
ls -l var/de
ls -l var/
less var/debug/db.log 
cat var/debug/db.log | grep TIME: 
./bin/magento dev:query-log:disable
cat var/debug/db.log | grep TIME: 
less var/debug/db.log 
cat app/etc/env.php 
mysql -u hublense_mage2 -p'YUAtnJX#q!LJz4.E' hublense_mage2_12_corrupt
less /var/log/mysql/mariadb-slow.log
mysql -u hublense_mage2 -p'YUAtnJX#q!LJz4.E' hublense_mage2_12_corrupt
less /var/log/mysql/mariadb-slow.log
mysql -u hublense_mage2 -p'YUAtnJX#q!LJz4.E' hublense_mage2_12_corrupt
./bin/magento deploy:mode:show
./bin/magento cron:run
mysql -u hublense_mage2 -p'YUAtnJX#q!LJz4.E' hublense_mage2_12_corrupt
./bin/magento cron:run
mysql -u hublense_mage2 -p'YUAtnJX#q!LJz4.E' hublense_mage2_12_corrupt
./bin/magento cache:flush
mysql -u hublense_mage2 -p'YUAtnJX#q!LJz4.E' hublense_mage2_12_corrupt
ps aux | grep cron"run
ps aux | grep cron:run
ps aux | grep "cron:run"
ps aux | grep "cron"
./bin/magento cron:run
ps aux | grep "cron"
mysql -u hublense_mage2 -p'YUAtnJX#q!LJz4.E' hublense_mage2_12_corrupt
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
clean
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
php bin/magento indexer:reindex
php bin/magento cache:clean
php bin/magento indexer:reindex
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
exit
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
exit
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
php bin/magento cache:clean
php bin/magento indexer:reindex
php bin/magento cache:clean
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
php bin/magento cache:flush
php bin/magento indexer:reindex
php bin/magento cache:flush
exit
