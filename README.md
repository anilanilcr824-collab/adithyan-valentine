# adithyan-valentine
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Adithyan ❤️ Ardra</title>
  <style>
    body {
      margin: 0;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      background: linear-gradient(135deg, #ff4d6d, #ff8fab);
      font-family: 'Arial', sans-serif;
      overflow: hidden;
    }

    .card {
      background: white;
      padding: 40px;
      border-radius: 22px;
      text-align: center;
      box-shadow: 0 20px 40px rgba(0,0,0,0.25);
      position: relative;
    }

    h1 {
      color: #ff4d6d;
      margin-bottom: 25px;
    }

    button {
      font-size: 20px;
      padding: 12px 32px;
      margin: 10px;
      border: none;
      border-radius: 30px;
      cursor: pointer;
      transition: 0.3s;
    }

    #yesBtn {
      background: #ff4d6d;
      color: white;
    }

    #yesBtn:hover {
      transform: scale(1.1);
    }

    #noBtn {
      background: #eee;
      position: absolute;
    }

    .love {
      font-size: 24px;
      color: #ff4d6d;
      margin-top: 25px;
      display: none;
    }
  </style>
</head>
<body>

  <div class="card">
    <h1>Adithyan ❤️ Ardra<br>Will you be my Valentine? 💘</h1>
    <button id="yesBtn">Yes 💖</button>
    <button id="noBtn">No 💔</button>
    <div class="love" id="loveText">
      Yayyy Ardra! 💞<br>
      You just made Adithyan the happiest person 😍
    </div>
  </div>

  <script>
    const noBtn = document.getElementById("noBtn");
    const yesBtn = document.getElementById("yesBtn");
    const loveText = document.getElementById("loveText");

    noBtn.addEventListener("mouseover", () => {
      const x = Math.random() * (window.innerWidth - 120);
      const y = Math.random() * (window.innerHeight - 60);
      noBtn.style.left = x + "px";
      noBtn.style.top = y + "px";
    });

    yesBtn.addEventListener("click", () => {
      loveText.style.display = "block";
    });
  </script>

</body>
</html>
