<!DOCTYPE html>
<html>
  <head>
    <title>DE STAAT - IN THE ROUND</title>
    <style>
      html {
        background-color: black;
        color: white;
        font-family: 'Futura', Helvetica
      }
      h1 {
        text-align: center;
      }
      body {
        width: 100%;
      }
      img {
          position: absolute;
          margin: auto;
          top: 0;
          left: 0;
          right: 0;
          bottom: 0;
      }
      </style>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <?php if ($_GET['key'] != '' ){ ?>
      <img src="http://188.226.129.169:8090/<?= $_GET['key']?>.mjpg"/>
    <?php } else { ?>
      <h1>NOTHING TO SEE</h1>
    <?php } ?>
  </body>
</html>
