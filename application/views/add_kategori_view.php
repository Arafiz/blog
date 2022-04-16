<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menambahkan Kategori</title>
</head>
<body>
    <center><h1>Tambahkan Kategori</h1></center>
    <h2>
    <center><form action="<?= base_url('index.php/kategori/add_kategori_act') ?>" method="post">
        <center><label for="">Nama Kategori</label></center>
        <input type="text" name="kategori_nama" id="kategori_nama">
        <br></br>
        <center><label for="">Keterangan Kategori</label></center>
            <textarea name="kategori_ket" id="kategori_ket" cols="100" rows="20">
            </textarea>
        <br></br>
        <center><button type="submit">
        Simpan
        </button></center>
    </h2>
    </form></center>
</body>
</html>