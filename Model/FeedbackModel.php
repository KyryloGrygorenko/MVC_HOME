<?php

namespace Model;

use Library\DbConnection;
class FeedbackModel
{
    public function save(array $feedback)
    {
        // author+>..., email => ...
        $pdo = DbConnection::getInstance()->getPdo();
        $sth= $pdo->prepare('INSERT INTO feedback VALUES (null, :author, :email, :message, null)');
        $sth->execute($feedback);
    }
}