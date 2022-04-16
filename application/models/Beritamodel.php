<?php

    Class Beritamodel extends CI_Model{

        function tampilBerita(){
            // return $this->db->get("tbl_berita")->result_array();

            return $this->db->query('select * from tbl_berita')->result_array();
        }

        public function add_berita_view($tambah){
            return $this->db->insert('tbl_berita', $tambah);

        }

        public function insert($data){
            $this->db->insert('berita', $data);
            return $this->db->insert_id();
        }
    }
?>