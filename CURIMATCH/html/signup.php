<?php
// データベースの接続情報
$servername = "localhost";
$username = "your_username"; // あなたのMySQLのユーザー名
$password = "your_password"; // あなたのMySQLのパスワード
$dbname = "curimatch_db"; // 作成したデータベース名

// データベースに接続
$conn = new mysqli($servername, $username, $password, $dbname);

// 接続チェック
if ($conn->connect_error) {
    die("接続失敗: " . $conn->connect_error);
}

// フォームから送信されたデータを取得
$user = $_POST['username'];
$email = $_POST['email'];
$pass = $_POST['password'];

// パスワードをハッシュ化
$hashed_password = password_hash($pass, PASSWORD_DEFAULT);

// SQL文を準備
$sql = "INSERT INTO users (username, email, password) VALUES ('$user', '$email', '$hashed_password')";

// データを挿入
if ($conn->query($sql) === TRUE) {
    echo "新規登録が完了しました！";
} else {
    echo "エラー: " . $sql . "<br>" . $conn->error;
}

// 接続を閉じる
$conn->close();
?>
