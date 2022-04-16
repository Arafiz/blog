<?php

    Class Berita extends CI_Controller{
        public function index(){
            $this->load->database();
            
            $this->load->model('Beritamodel');

            $data['berita']    =
            $this->Beritamodel->tampilBerita();
            $this->load->view('berita_view', $data);
        }

        public function add_berita(){
            $this->load->view('add_berita_view');
        }

        function add_berita_act(){
            $this->load->database();
            $this->load->model('Beritamodel');

            $tambah = [
                'berita_judul'      => $this->input->post('berita_judul'),
                'berita_isi'        => $this->input->post('berita_isi'),
                'berita_penulis'    => $this->input->post('berita_penulis'),
                'berita_tanggal'    => $this->input->post('berita_tanggal'),
                'berita_lokasi'     => $this->input->post('berita_lokasi'),
                'kategori_id'       => $this->input->post('kategori_id'),
                'berita_foto'       => $this->input->post('berita_foto'),
            ];

            $this->Beritamodel->add_berita_view($tambah);
            redirect('Berita');
        }

        public function delete($id){
            $this->load->database();

            $this->db->where('berita_id', $id);
            $this->db->delete('tbl_berita');


            redirect('berita');
        }
    }

?>