<?php

namespace AdManager\PublisherBundle\Controller;

use Sonata\AdminBundle\Controller\CRUDController;
//use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

use AdManager\PublisherBundle\Entity\Publisher;
use AdManager\PublisherBundle\Form\PublisherType;

class PublisherController extends CRUDController
{
    private $_breadcrumbs = array(
        'publisher' => array('uri' => '','label' => 'Список редакторов объявлений'),
        'add' => array('uri' => '','label' => 'Добавление'),
        'edit' => array('uri' => '','label' => 'Редактирование'),
//        's' => 'Список редакторов объявлений',
    );
    
    
    
    public function editAction($id = null)
    {
        return parent::editAction($id);
    }
//    
//    public function indexAction()
//    {
//	$publishers = $this->getDoctrine()
//	    ->getRepository('AdManagerPublisherBundle:Publisher')
//	    ->findAllOrderedByName();
//	
//	
//	if (!$publishers) {
//	    throw $this->createNotFoundException('No publishers found');
//	}
//
//        return $this->render('AdManagerPublisherBundle:Publisher:index.html.twig', 
//                array(
//                    'publishers' => $publishers,
//                    'base_template' => $this->container->get('sonata.admin.pool')->getTemplate('layout'),
//                    'admin_pool'    => $this->container->get('sonata.admin.pool'),
//                    'breadcrumbs' => $this->getBreadcrumb(),
//            ));
//    }
//    
//    public function showAction($id)
//    {
//	$publisher = $this->getDoctrine()
//	    ->getRepository('AdManagerPublisherBundle:Publisher')
//	    ->find($id);
//	
//	if (!$publisher) {
//	    throw $this->createNotFoundException('No publisher found for id = '. $id);
//	}
//	
//	
//        return $this->render('AdManagerPublisherBundle:Publisher:show.html.twig', 
//                array(
//                    'publisher' => $publisher,
//                    'base_template' => $this->container->get('sonata.admin.pool')->getTemplate('layout'),
//                    'admin_pool'    => $this->container->get('sonata.admin.pool'),
//                    'breadcrumbs' => $this->getBreadcrumb(),
//                ));
//    }
//    
//    
//    public function addAction(Request $request)
//    {
//	$publisher = new Publisher();
//	$form = $this->createForm(new PublisherType(), $publisher);
//	
//	if ($request->getMethod() == 'POST') {
//	    $form->bindRequest($request);
//
//	    if ($form->isValid()) {
//		// выполняем прочие действие, например, сохраняем задачу в базе данных
//		
//		$publisher = $form->getData();
//		$publisher->setDeleted(0);
//		$em = $this->getDoctrine()->getEntityManager();
//		$em->persist($publisher);
//		$em->flush();
//		
//		
//		return $this->redirect($this->generateUrl('ad_manager_publisher_homepage'));
//	    }
//	}
//	
//	
//	return $this->render('AdManagerPublisherBundle:Publisher:add.html.twig', array(
//            'form' => $form->createView(),
//            'base_template' => $this->container->get('sonata.admin.pool')->getTemplate('layout'),
//            'admin_pool'    => $this->container->get('sonata.admin.pool'),
//            'breadcrumbs' => $this->getBreadcrumb(),
//        ));
//    }
//
//    
//    public function deleteAction($id, $confirm = 0)
//    {
//	$publisher = $this->getDoctrine()
//	    ->getRepository('AdManagerPublisherBundle:Publisher')
//	    ->find($id);
//	if ($publisher->getDeleted() == 1)
//	{
//	    return $this->redirect($this->generateUrl('ad_manager_publisher_homepage'));
//	}
//	    
//	$request = $this->getRequest();
//	
//	if ($request->getMethod() == 'POST') {
//	    $form = $request->request->get('form');
//	    
//	    if ($form['confirm'] == 1)
//	    {
//		$em = $this->getDoctrine()->getEntityManager();
//		$publisher->setDeleted('1');
//		$em->flush();
//		return $this->redirect($this->generateUrl('ad_manager_publisher_homepage'));
//	    }
//	    
//	} else {
//	    $form = $this->createFormBuilder()
//		->add('confirm', 'checkbox', array('label' => 'Do you realy want to delete user'))
//		->getForm();
//	}
//	
//	if (!$publisher) {
//	    throw $this->createNotFoundException('No publisher found for id = '. $id);
//	}
//        return $this->render(
//		'AdManagerPublisherBundle:Publisher:delete.html.twig', 
//		array(
//		    'publisher' => $publisher,
//		    'form' =>  $form->createView(),
//                    'base_template' => $this->container->get('sonata.admin.pool')->getTemplate('layout'),
//                    'admin_pool'    => $this->container->get('sonata.admin.pool'),
//                    'breadcrumbs' => $this->getBreadcrumb(),
//		    ));
//    }
//    
//    public function editAction($id)
//    {
//	$publisher = $this->getDoctrine()
//	    ->getRepository('AdManagerPublisherBundle:Publisher')
//	    ->find($id);
//	
//	if (!$publisher) {
//	    throw $this->createNotFoundException('No publisher found for id = '. $id);
//	}
//	
//	$editForm = $this->createForm(new PublisherType(), $publisher);
//	$editForm->add('deleted', 'checkbox', array('label' => 'Is Deleted', 'required' => false,));
//	$request = $this->getRequest();
//	$em = $this->getDoctrine()->getEntityManager();
//	
//	if ($request->getMethod() == 'POST') {
//	    $editForm->bindRequest($request);
//
//	    if ($editForm->isValid()) {
//		$publisher = $editForm->getData();
////		$publisher->setDeleted(0);
//		$em->persist($publisher);
//		$em->flush();
//		
//		return $this->redirect($this->generateUrl('ad_manager_publisher_homepage'));
//	    }
//	}
//	
//        return $this->render(
//		'AdManagerPublisherBundle:Publisher:edit.html.twig', 
//		array(
//		    'publisher' => $publisher,
//		    'form' =>  $editForm->createView(),
//                    'base_template' => $this->container->get('sonata.admin.pool')->getTemplate('layout'),
//                    'admin_pool'    => $this->container->get('sonata.admin.pool'),
//                    'breadcrumbs' => $this->getBreadcrumb(),
//		    ));
//    }
    
    function getBreadcrumb() {
        $this->_breadcrumbs['publisher']['uri'] = $this->generateUrl('ad_manager_publisher_homepage');
        $path_info = $this->getRequest()->getPathInfo();
        $breadcrumbs = array();
        foreach ($this->_breadcrumbs as $key => $breadcrumb)
        {
            if (preg_match("#".$key."#", $path_info)) {
                $breadcrumbs[] = $breadcrumb;
            }
        }
        return $breadcrumbs;
    }
    
}
