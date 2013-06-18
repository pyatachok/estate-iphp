<?php

namespace AdManager\PublisherBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('AdManagerPublisherBundle:Default:index.html.twig', array(
            'name' => $name,
            'base_template' => $this->container->get('sonata.admin.pool')->getTemplate('layout'),
                    'admin_pool'    => $this->container->get('sonata.admin.pool')
                ));
    }
}
