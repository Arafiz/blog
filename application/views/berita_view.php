<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Berita afiz</title>
</head>
<body>
    <center><h1>Berita afiz</h1></center>
    <center><button><a href="<?=base_url('index.php/berita/add_berita') ?>">Tambahkan Berita</a></button></center>
    <hr>
    <?php
        foreach ($berita as $brt){
            echo "<h2>" .$brt['berita_judul']. "</h2>";
            echo "<p>" .$brt['berita_isi']. "</p>";
            echo "<p> Penulis : " .$brt['berita_penulis'];
            echo "<p> Tanggal : " .$brt['berita_tanggal'];
            echo "<p> Lokasi : " .$brt['berita_lokasi'];
            echo "<p> Kategori : " .$brt['kategori_id'];
            echo "<p> Foto : " .$brt['berita_foto']. "</p>";
    ?>
            <button><a href="<?= base_url('index.php/berita/delete/'.$brt['berita_id'])?>">Hapus</a></button>

    <?php
        }
    ?>
</body>
</html>