<?php

namespace Model\Form;
use Library\Request;

class  FeedbackForm
{
    public $email;
    public $author;
    public $message;

    public function __construct(Request $request)
    {
        $this->email=$request->post('email');
        $this->author=$request->post('author');
        $this->message=$request->post('message');
    }

    public function isValid ()
    {
        //TODO : create validation TRIM
        return true;
    }
}