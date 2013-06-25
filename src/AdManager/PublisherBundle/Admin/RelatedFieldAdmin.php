<?php
use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Form\FormMapper;
 
class RelatedFieldAdmin extends Admin
{
protected function configureFormFields(FormMapper $formMapper)
{
    $formMapper
      // ->add('promotion')
         ->add('foo')
         ->add('value')
    ;
}
}
