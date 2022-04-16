<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menambahkan Blog</title>
</head>
<body>
    <center><h1>Tambahkan Blog</h1></center>
    <h2>
    <center><form action="<?= base_url('index.php/blog/add_blog_act') ?>" method="post">
    <center><label for="">Judul Blog</label></center>
        <input type="text" name="blog_judul" id="blog_judul">
        <br></br>
        <center><label for="">Isi Blog</label></center>
            <textarea name="blog_content" id="blog_content" cols="100" rows="20">
            </textarea>
        <br></br>
        <center><label for="">Penulis</label></center>
        <input type="text" name="blog_penulis" id="blog_penulis">
        <br></br>
        <center><label for="">Kategori</label></center>
        <select name="kategori_id" id="kategori_id">
            <option value="1">Sepak Bola</option>
            <option value="2">Bulu Tangkis</option>
            <option value="3">Permaianan</option>
            <option value="4">Berita Terkini</option>
        </select>
        <br></br>
        <center><button type="submit">
        Simpan
        </button></center>
    </h2>
    </form></center>
</body>
</html>