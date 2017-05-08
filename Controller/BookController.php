<?php
namespace Controller;

use Library\Controller;
use Model\BookModel;

class BookController extends Controller {
    public function indexAction($route)
    {
        $model = new BookModel();
        $books = $model->findAll();
        $author= 'King';

        $data = [
            'author'=>$author,
            'books'=>$books
        ];

        return $this->render('index.phtml',$route, $data);
    }
    public function showAction()
    {
        return 'showAction';
    }

    public function editAction()
    {

    }
}

