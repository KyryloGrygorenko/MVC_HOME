<?php

namespace Controller;
use Library\Controller;
use Library\Request;
use Model\Form\FeedbackForm;
use Model\FeedbackModel;

class DefaultController extends Controller
{
    public function indexAction($route)
    {
        return $this->render('index.phtml',$route);
    }

    public function feedbackAction($route, Request $request)
    {
        $form= new FeedbackForm($request);
        if ($request->isPost()){
            if ($form->isValid()) {
                $model=new FeedbackModel;
                $model->save([
                    'author' => $form->author,
                    'email' => $form->email,
                    'message' => $form->message,
                ]);
            }
        }

        return $this->render('feedback.phtml',$route);
    }

}

