<?php

namespace Controller;
use Library\Controller;
use Library\Request;
use Library\Session;
use Library\Router;
use Model\Form\FeedbackForm;
use Model\FeedbackModel;

class DefaultController extends Controller
{
    public function indexAction($route,Request $request)
    {
        return $this->render('index.phtml',$route);
    }

    public function feedbackAction($route, Request $request)
    {
        $form= new FeedbackForm($request);
        if ($request->isPost()){
            var_dump($form->isValid());
            if ($form->isValid()) {
                echo 'tyt';
                $model=new FeedbackModel;
                $model->save([
                    'author' => $form->author,
                    'email' => $form->email,
                    'message' => $form->message,
                ]);

                Session::setFlash('Feedback sent');

                //Router::redirect ('/index.php?route=default/feedback');
                Router::redirect ('http://localhost/oop/MVC/index.php?route=default/feedback');
            }

            Session::setFlash('Fill the fields properly');

        }
        //Session::setFlash('Fill the fields properly');
        return $this->render('feedback.phtml',$route, ['form'=> $form]);
    }

}

