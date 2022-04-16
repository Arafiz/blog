<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <center><title>Kategori "Blog afiz"</title><center>
</head>
<body>
    <h1>Kategori Blog afiz</h1>
    <button><a href="<?=base_url('index.php/kategori/add_kategori') ?>">Tambahkan Kategori</a></button>
    <br><br>
    <table border="1" width="100%">
        <br>
        <tr>
            <th>No</th>
            <th>Nama Kategori</th>
            <th>Keterangan Kategori</th>
            <th>Tindakan</th>
        </tr>
        <?php
            foreach ($kategori as $kat){
        ?>
        <tr>
            <td><center><?= $kat['kategori_id']?><center></td>
            <td><center><?= $kat['kategori_nama']?><center></td>
            <td><center><?= $kat['kategori_ket']?><center></td>
            <td><center>Edit || 

                <button><a href="<?= base_url('index.php/kategori/delete/'.$kat['kategori_id'] )?>"> Hapus <center></a></button>

            </td>
            </tr>
        <?php
            }
        ?>
    </table>
</body>
</html>