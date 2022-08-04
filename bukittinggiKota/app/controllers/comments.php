<?php

include_once(ROOT_PATH . "/app/database/db.php");
include_once(ROOT_PATH . "/app/helpers/middleware.php");

$table = 'posts';
$comments = 'comments';

if(isset($_POST['comment-submit'])){

	$post = selectOne($table, ['id' => $_GET['id']]);
	$post_id = $post['id'];

	mysqli_query($conn, "INSERT INTO comments SET
		nama = '$_POST[nama]',
		email = '$_POST[email]',
		komentar = '$_POST[komentar]',
		post_id = '$post_id'
		");
}
