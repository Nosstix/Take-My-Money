<?php
include('view/commun/header.php');



$page = isset($_GET['page']) ? $_GET['page'] : 'accueil';

switch ($page) {
    case '.':
        include('.');
        break;



    default:
        include('view/acceuil.php');
        break;
}


include('view/commun/footer.php');

?>