<?php

namespace AdManager\PublisherBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Component\Translation\TranslatorInterface;

use Knp\Menu\FactoryInterface as MenuFactoryInterface;
use Knp\Menu\ItemInterface as MenuItemInterface;

//use Symfony\Component\Translation\Translator;
//use Sonata\AdminBundle\Translator\Extractor\JMSTranslatorBundle\AdminExtractor;

class AdAdmin extends Admin
{
    
    protected $translationDomain = 'AdManagerPublisherBundle';
    
    protected $datagridValues = array(
        '_page' => 1, // Display the first page (default = 1)
        '_sort_order' => 'DESC', // Descendant ordering (default = 'ASC')
        '_sort_by' => 'creation_date' // name of the ordered field (default = the model id field, if any)
        // the '_sort_by' key can be of the form 'mySubModel.mySubSubModel.myField'.
    );
    
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('title')
            ->add('creation_date', 'datetime', array(
                'widget' => 'single_text', 
                'format' => 'yyyy-MM-dd HH:mm:ss',
                'attr' => array('class' => 'date-time-picker')
                ))
            ->add('deleted', null, array('required' => false))
            ->add('publisher', 'sonata_type_model', array(
                'class' => 'AdManagerPublisherBundle:Publisher',
                'property' => 'name',
                'multiple' => false,
//                'by_reference' => false
            ));
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('title')
            ->add('creation_date', 'doctrine_orm_string')
            ->add('deleted')
        ;
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('title')
            ->add('creation_date')
            ->add('deleted')
//            ->add('enabled')
        ;
    }
    
    public function buildBreadcrumbs($action, MenuItemInterface $menu = null)
    {

        $menu = $this->menuFactory->createItem('root');
        $menu = $menu->addChild(
                $this->trans($this->getLabelTranslatorStrategy()->getLabel('dashboard', 'breadcrumb', 'link'), array(), $this->translationDomain, 'ru'),
                array('uri' => $this->routeGenerator->generate('sonata_admin_dashboard'))
            );
        
        return parent::buildBreadcrumbs($action, $menu);
    }
    
    public function trans($id, array $parameters = array(), $domain = 'AdManagerPublisherBundle', $locale = null)
    {
        $domain = $domain ?: $this->translationDomain;

        if (!$this->translator) {
            return $id;
        }
        return $this->translator->trans($id, $parameters,  $this->translationDomain, $locale);
    }
    

    
}
