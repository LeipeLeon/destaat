<!DOCTYPE html>
<html>
  <head>
    <title>HELP YOURSELF</title>
    <style>
      html {
        background-color: black;
        color: white;
        font-family: 'Futura', Helvetica
      }
      h1 {
        text-align: center;
        font-size: 10vw;
      }
      img {
          position: absolute;
          margin: auto;
          width: 288px;
          height: 352px;
          top: 0;
          left: 0;
          right: 0;
          bottom: 0;
      }
      </style>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <?php if (sizeof($_GET) > 0 ){ ?>
      <h1>HELP YOURSELF</h1>
      <img src="http://188.226.129.169:8090/<?= array_keys($_GET)[0]?>.mjpg"/>
    <?php } else { ?>
      <h1>NOTHING TO SEE</h1>
    <?php } ?>
  </body>
</html>
