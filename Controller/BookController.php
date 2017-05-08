<?php
namespace Controller;

use Library\Controller;
class BookController extends Controller {
    public function indexAction($route)
    {
        return $this->render('index.phtml',$route);
    }
    public function showAction()
    {
        return 'showAction';
    }

    public function editAction()
    {

    }
}

