<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>学生プロジェクト支援プラットフォーム</title>
    <link rel="stylesheet" href="StudentSponso.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>学生プロジェクト支援プラットフォーム</h1>
            <nav>
                <ul>
                    <li><a href="#home">ホーム</a></li>
                    <li><a href="#about">サイトの説明</a></li>
                    <li><a href="#projects">プロジェクト</a></li>
                    <li><a href="#sponsors">スポンサー</a></li>
                    <li><a href="#contact">お問い合わせ</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section id="about">
        <div class="container">
            <h2>サイトの説明</h2>
            <p>
                このプラットフォームは、企業やスポンサーと学生を繋げる新しいサービスです。<br>
                企業は学生の自主制作プロジェクトにスポンサーシップを提供することで、教育に投資し、社会貢献を果たすことができます。<br>
                学生はスポンサーのPRをクレジットやプロジェクト内で行い、相互に利益をもたらします。
            </p>
        </div>
    </section>

    <section id="projects">
        <div class="container">
            <h2>プロジェクト一覧</h2>
            <div class="project-list">
                <!-- プロジェクトカード -->
                <div class="project-card">
                    <h3>プロジェクト名1</h3>
                    <p>プロジェクトの概要...</p>
                    <button class="details-button">詳細を見る</button>
                </div>
                <div class="project-card">
                    <h3>プロジェクト名2</h3>
                    <p>プロジェクトの概要...</p>
                    <button class="details-button">詳細を見る</button>
                </div>
                <!-- 追加のプロジェクトカード -->
            </div>
        </div>
    </section>

    <section id="sponsors">
        <div class="container">
            <h2>スポンサーの紹介</h2>
            <p>私たちのスポンサーになってくださる企業をご紹介します。</p>
        </div>
    </section>

    <section id="contact">
        <div class="container">
            <h2>お問い合わせ</h2>
            <form>
                <label for="name">名前:</label>
                <input type="text" id="name" name="name">
                <label for="email">メール:</label>
                <input type="email" id="email" name="email">
                <label for="message">メッセージ:</label>
                <textarea id="message" name="message"></textarea>
                <button type="submit">送信</button>
            </form>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 学生プロジェクト支援プラットフォーム. All rights reserved.</p>
        </div>
    </footer>

    <!-- モーダルウィンドウ -->
    <div id="modal" class="modal">
        <div class="modal-content">
            <span class="close-button">&times;</span>
            <h2>プロジェクト詳細</h2>
            <p id="modal-description">詳細なプロジェクトの説明...</p>
        </div>
    </div>

    <script>
        // モーダル関連のスクリプト
        document.addEventListener("DOMContentLoaded", function() {
            const modal = document.getElementById("modal");
            const closeButton = document.querySelector(".close-button");
            const detailsButtons = document.querySelectorAll(".details-button");

            detailsButtons.forEach(button => {
                button.addEventListener("click", function() {
                    const projectCard = this.parentElement;
                    const projectName = projectCard.querySelector("h3").textContent;
                    const projectDescription = projectCard.querySelector("p").textContent;
                    document.getElementById("modal-description").textContent = projectName + ": " + projectDescription;
                    modal.style.display = "block";
                });
            });

            closeButton.addEventListener("click", function() {
                modal.style.display = "none";
            });

            window.addEventListener("click", function(event) {
                if (event.target === modal) {
                    modal.style.display = "none";
                }
            });
        });
    </script>
</body>
</html>

<style>
/* デフォルトのマージンとパディングをリセット */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* ボディのスタイル */
body {
    font-family: 'Helvetica Neue', Arial, sans-serif;
    line-height: 1.6;
    color: #333; /* テキストを濃いグレーに */
    background-color: #f9f9f9; /* 背景色を薄いグレーに */
    padding: 20px; /* ボディに少しパディングを追加 */
}

/* ヘッダーのスタイル */
header {
    background-color: #333; /* ダークグレー */
    color: #fff;
    padding: 20px 0;
    text-align: center;
}

.container {
    width: 90%;
    margin: 0 auto;
}

nav ul {
    list-style: none;
    text-align: center; /* ナビゲーションを中央寄せに */
    padding: 10px 0; /* ナビゲーションにパディングを追加 */
}

nav ul li {
    display: inline-block;
    margin: 0 15px;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
    font-size: 16px;
}

nav ul li a:hover {
    text-decoration: underline;
}

/* セクションのスタイル */
section {
    padding: 50px 0;
    background-color: #fff;
    margin-bottom: 20px; /* セクション間にスペースを追加 */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 軽いシャドウを追加 */
}

#about {
    background-color: #eaeaea; /* 薄いグレーの背景色 */
}

.container h2 {
    margin-bottom: 15px;
    color: #333; /* テキストを濃いグレーに */
    text-align: center; /* 見出しを中央寄せに */
}

.container p {
    text-align: center;
    color: #666; /* テキストをやや薄いグレーに */
    margin: 0 auto;
    max-width: 800px; /* 説明文の幅を制限 */
}

.project-list {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around; /* プロジェクトカードを均等に配置 */
}

.project-card {
    background-color: #fff;
    padding: 20px;
    margin: 10px;
    border: 1px solid #ddd; /* 薄いグレーのボーダー */
    border-radius: 5px;
    width: calc(100% / 3 - 20px);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 軽いシャドウを追加 */
}

.project-card h3 {
    margin-bottom: 10px;
    color: #333; /* テキストを濃いグレーに */
}

.project-card p {
    margin-bottom: 15px;
    color: #666; /* テキストをやや薄いグレーに */
}

.project-card button {
    background-color: #333; /* ダークグレー */
    color: #fff;
    border: none;
    padding: 10px 15px;
    cursor: pointer;
    border-radius: 3px;
}

.project-card button:hover {
    background-color: #555; /* ホバー時の色を少し濃く */
}

/* フォームのスタイル */
form {
    display: flex;
    flex-direction: column;
    max-width: 600px;
    margin: 0 auto;
}

form label {
    margin-bottom: 5px;
    color: #333;
}

form input, form textarea {
    margin-bottom: 10px;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 3px;
    width: 100%;
    box-sizing: border-box;
}

form button {
    background-color: #333;
    color: #fff;
    border:
