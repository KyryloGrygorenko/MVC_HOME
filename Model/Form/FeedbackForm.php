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
        $this->email=trim($request->post('email'));
        $this->author=trim($request->post('author'));
        $this->message=trim($request->post('message'));
    }

    // Валидация формы
    public function isValid ()
    {
        if ($this->author == null || $this->email == null || $this->message == null) {
            return false;
        }elseif(strlen($this->author)>30 || strlen($this->email)>30 || strlen($this->message)>150){
            return false;
        }
        return true;
    }
}