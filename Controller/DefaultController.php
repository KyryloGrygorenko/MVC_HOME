<?php

namespace Controller;
use Library\Controller;
class DefaultController extends Controller
{
    public function indexAction($route)
    {
        return $this->render('index.phtml',$route);
    }

    public function feedbackAction($route)
    {
        return $this->render('feedback.phtml',$route);
    }
}

