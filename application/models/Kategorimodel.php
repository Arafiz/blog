<?php

    Class Kategorimodel extends CI_Model{

        function tampilkategori(){
            return $this->db->get('tbl_kategori')->result_array();
        }

        public function add_kategori($tambah){
            return $this->db->insert('tbl_kategori', $tambah);

        }
    }
?>