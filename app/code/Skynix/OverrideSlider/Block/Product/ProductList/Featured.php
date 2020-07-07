<?php

namespace Skynix\OverrideSlider\Block\Product\ProductList;

use Magento\Catalog\Api\CategoryRepositoryInterface;
use Magento\Catalog\Block\Product\Context;
use Magento\Catalog\Block\Product\ListProduct;
use Magento\Catalog\Model\Category;
use Magento\Catalog\Model\Layer\Resolver;
use Magento\Catalog\Model\Product;
use Magento\Catalog\Model\ResourceModel\Product\Collection;
use Magento\Customer\Model\Session;
use Magento\Framework\App\ObjectManager;
use Magento\Framework\Data\Helper\PostHelper;
use Magento\Framework\Url\Helper\Data as HelperData;
use Magento\Framework\View\DesignInterface;
use Magento\Store\Model\StoreManagerInterface;

class Featured extends \Infortis\Base\Block\Product\ProductList\Featured
{
    /**
     * @var StoreManagerInterface
     */
    protected $_modelStoreManagerInterface;

    /**
     * @var DesignInterface
     */
    protected $_viewDesignInterface;

    /**
     * @var Session
     */
    protected $_modelSession;

    /**
     * @var Collection
     */
    protected $_productCollection;

    protected $_catalogHelperOutput;
    protected $_categoryFactory;
    protected $_categoryLayerFactory;
    protected $_baseDataHelper;
    protected $_baseLabelHelper;
    protected $_infortisImageHelper;    

    public function __construct(Context $context, 
        PostHelper $postDataHelper, 
        Resolver $layerResolver, 
        CategoryRepositoryInterface $categoryRepository, 
        HelperData $urlHelper, 
        Session $modelSession, 
        Collection $productCollection,
        \Magento\Catalog\Helper\Output $catalogHelperOutput, 
        \Magento\Catalog\Model\Layer\CategoryFactory $categoryLayerFactory,        
        \Infortis\Base\Helper\Data $baseDataHelper,
        \Infortis\Base\Helper\Labels $baseLabelHelper,
        \Infortis\Infortis\Helper\Image $infortisImageHelper, 
        \Magento\Catalog\Model\CategoryFactory $categoryFactory,      
        array $data = []
    ) {
        $this->_modelStoreManagerInterface  = $context->getStoreManager();
        $this->_viewDesignInterface         = $context->getDesignPackage();
        $this->_modelSession                = $modelSession;
        $this->_catalogHelperOutput         = $catalogHelperOutput;
        $this->_categoryFactory             = $categoryFactory;
        $this->_categoryLayerFactory        = $categoryLayerFactory;
        $this->_baseDataHelper              = $baseDataHelper;
        $this->_baseLabelHelper             = $baseLabelHelper;
        $this->_infortisImageHelper         = $infortisImageHelper; 
                        
        parent::__construct(
            $context, 
            $postDataHelper, 
            $layerResolver, 
            $categoryRepository, 
            $urlHelper, 
            $modelSession, 
            $productCollection, 
            $catalogHelperOutput,
            $categoryLayerFactory,
            $baseDataHelper,
            $baseLabelHelper,
            $infortisImageHelper,
            $categoryFactory, 
            $data);
    }

   public function getCategoryProduct($categoryId)
    {
        $category = $this->_categoryFactory->create()->load($categoryId)->getProductCollection()->addAttributeToSelect('*');
        return $category;
    }
    
}
