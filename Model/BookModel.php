<?php

namespace Model;

use Library\DbConnection;
class BookModel
{
    public function findAll ()
    {
        $pdo = DbConnection::getInstance()->getPdo();
        $sth = $pdo->query('SELECT title FROM book');
        return $sth->fetchAll(\PDO::FETCH_ASSOC);

    }
}