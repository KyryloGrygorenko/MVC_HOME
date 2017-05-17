<?php

namespace Controller;
use Library\Controller;
use Library\Request;
use Library\Session;
use Library\Router;
use Model\Form\FeedbackForm;
use Model\FeedbackRepository;

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
            if ($form->isValid()) {
                $repository=$this->get('repository')->getRepository('Feedback');
                $repository->save([
                    'author' => $form->author,
                    'email' => $form->email,
                    'message' => $form->message,
                ]);

                Session::setFlash('Feedback sent');

                //Router::redirect ('/index.php?route=default/feedback');
                $this->get('router')->redirect('http://localhost/oop/MVC/index.php?route=default/feedback');
            }

            Session::setFlash('Fill the fields properly');

        }

        return $this->render('feedback.phtml',$route, ['form'=> $form]);
    }

}

