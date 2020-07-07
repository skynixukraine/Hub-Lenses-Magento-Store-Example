<?php  


use \Magento\Framework\App\Bootstrap;
include('app/bootstrap.php');
$bootstrap = Bootstrap::create(BP, $_SERVER);
$objectManager = $bootstrap->getObjectManager();
$storeManager = $objectManager->get('\Magento\Store\Model\StoreManagerInterface');
echo $base_url =	$storeManager->getStore()->getBaseUrl(); 


function refreshCache(){
	$command = 'php bin/magento cache:clean && php bin/magento cache:flush';
	echo shell_exec($command);	
	echo '<br>';
	echo 'Cache Cleaned Successfully !';
}
		
function reindex(){
	$command = 'php bin/magento indexer:reindex';
	echo shell_exec($command);	
	echo '<br>';
	echo 'Re-Indexing Done Successfully !';
}

reindex(); die;
echo '<br>';
echo '<br>';
refreshCache();

?>