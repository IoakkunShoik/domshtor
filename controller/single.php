<?php
require_once('db.php');

$quer = $pdo->query('SELECT * FROM catalogue');

while($row = $quer->fetch()){
    $allimg = json_decode($row['image']);
    foreach($allimg as $onetype){
        echo '<div style="background-color: gray; border: 3px solid black">';
        echo '<style> img{height: 10vw; </style>';
        foreach($onetype as $image){
            echo "<img src='$image'>";
        }

        echo '</div> ';
    }
    echo "<hr>";
    
}