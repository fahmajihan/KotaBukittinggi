<?php

include_once(ROOT_PATH . "/app/database/db.php");
include_once(ROOT_PATH . "/app/helpers/middleware.php");

$table = 'inboxes';
$inboxes = selectAll($table);

if(isset($_POST['submit-contact'])){

    mysqli_query($conn, "INSERT INTO inboxes SET
        email = '$_POST[email]',
        i_message = '$_POST[message]'
        ");
}
