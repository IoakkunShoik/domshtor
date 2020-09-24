<?php
function showArticle($id){
    require('db.php');
    $id = (int)$id;
    $query = $pdo->query("SELECT * FROM catalogue WHERE id='$id'");
    if($query) {
        return $query->fetch();
    } else {
        return 0;
    }
}
