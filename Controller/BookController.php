<?php
namespace Controller;

use Library\Controller;
class BookController extends Controller {
    public function indexAction($route)
    {
        //DB connect,model
        $author= 'King';
        $books= ['book1','book2','book3'];
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

