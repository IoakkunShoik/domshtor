<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
   
    <?php 

    echo '<link rel="stylesheet" href="css/font.css">';
    echo '<link rel="stylesheet" href="css/mainstyle.css">';
    echo '<script src="js/burger.js"></script>';

    if($_GET['page']=='shop'){
        echo '<link rel="stylesheet" href="css/shoppagestyle.css">';
    }
    if(!$_GET['page'] || $_GET['page'] == 'main'){
        echo '<link rel="stylesheet" href="css/mainpagestyle.css">';
    }
    if($_GET['page']=='article'){
        echo '<link rel="stylesheet" href="css/articlepagestyle.css">';
        echo '<script src="js/selectType.js"></script>';
        echo '<script src="js/jquery.min.js"></script>';
        echo '<script src="js/tocart.js"></script>';

    }

    if($_GET['page']=='cart'){
        echo '<link rel="stylesheet" href="css/cart.css">';
        echo '<script src="js/jquery.min.js"></script>';
        echo '<script src="js/tocart.js"></script>';
    }
    
    ?>

    <link rel="stylesheet" href="css/mainstyle.css">
    <title>Домштор</title>
</head>
<body>
    <div class="statLogo">1</div>
    <div class="logo">
        <div class="burger" onclick='showBurger()'>
            
        </div>
        <a href="?page=main"><div class="name">
        
            <div class="main">
                <h1>DOM • Shtor</h1>
            </div>
            <div class="sub"> тестиль для дома</div>
        </div>
        </a>
        <a href="?page=cart"><div class="cart"><div class="cirCounter"><?php echo $_SESSION['artcount']; ?></div></div></a>
        <div class="menu">
        <div class="cancelBurger" onclick='hideBurger()'></div>
            <ul>
                <li>Lorem, ipsum dolor.</li>
                <li>Ea, odio ipsam?</li>
                <li>Nisi, optio eligendi?</li>
                <li>Doloribus, magni at.</li>
                <li>Sed, nobis sequi?</li>
                <li>Commodi, corrupti molestiae!</li>
            </ul>
        </div>
    </div>
