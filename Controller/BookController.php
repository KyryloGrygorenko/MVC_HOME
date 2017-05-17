<?php
namespace Controller;

use Library\Controller;
use Model\BookRepository;

class BookController extends Controller {
    public function indexAction($route)
    {
        $model = $this->get('repository')->getRepository('Book');
        $books = $model->findAll();
        $author= 'King';

        $data = [
            'author'=>$author,
            'books'=>$books
        ];

        return $this->render('index.phtml',$route, $data);
    }
    public function showAction( )
    {
        return 'hello';
    }

    public function editAction( )
    {

    }
}

