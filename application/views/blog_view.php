<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Blog afiz</title>
    </head>
    <body>
        <center><h1>Blog afiz</h1></center>
        <center>
            <button><a href="<?=base_url('index.php/berita') ?>">Berita</a></button>
            <button><a href="<?=base_url('index.php/kategori') ?>">Kategori</a></button>
        </center>
        <br>
        <center><button><a href="<?=base_url('index.php/blog/add_blog') ?>">Tambahkan Blog</a></button></center>
        <br>
        <hr>
        <?php
        foreach ($blog as $bg){
            echo "<center><h1>" .$bg['blog_judul']. "</h1></center>";
        ?>
        <center><img width="500px" height="250px" src="<?= base_url('gambar_blog/'.$bg['blog_cover']) ?>" alt=""></center>
        <center>
            <?php
            echo "<h3>" .$bg['blog_content']. "</h3>";
            echo "<p> Penulis : " .$bg['blog_penulis'];
            echo "<p> Kategori : " .$bg['kategori_id'];
            echo "<p> Tanggal & Waktu : " .$bg['blog_tgl']. "</p>";
            ?>
        </center>
        <center><button><a href="<?= base_url('index.php/blog/delete/'.$bg['blog_id'])?>">Hapus</a></button></center><hr>
        <?php
        }
        ?>
        </body>
        </html>