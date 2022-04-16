<?php

    Class Kategori extends CI_Controller{
        public function index(){
            $this->load->database();

            $this->load->model('Kategorimodel');

            $data['kategori'] =
            $this->Kategorimodel->tampilkategori();
            $this->load->view('kategori_view', $data);
        }

        public function delete($id){
            $this->load->database();

            $this->db->where('kategori_id', $id);
            $this->db->delete('tbl_kategori');


            redirect('Kategori');
        }

        public function add_kategori(){
            $this->load->view('add_kategori_view');
        }

        function add_kategori_act(){
            $this->load->database();
            $this->load->model('Kategorimodel');

            $tambah = [
                'kategori_id'   => $this->input->post('kategori_id'),
                'kategori_nama' => $this->input->post('kategori_nama'),
                'kategori_ket'  => $this->input->post('kategori_ket'),  
            ];

            $this->Kategorimodel->add_kategori($tambah);
            redirect('Kategori');
        }
    }

?>