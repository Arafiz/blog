<?php

    Class Blog extends CI_Controller{
        public function index(){
            $this->load->database();
            
            $this->load->model('Blogmodel');

            $data['blog']    =
            $this->Blogmodel->tampilBlog();
            $this->load->view('blog_view', $data);
        }

        public function add_blog(){
            $this->load->view('add_blog_view');
        }

        function add_blog_act(){
            $this->load->database();
            $this->load->model('Blogmodel');

            $tambah = [
                'blog_judul'    => $this->input->post('blog_judul'),
                'blog_content'  => $this->input->post('blog_content'),
                'blog_penulis'  => $this->input->post('blog_penulis'),
                'kategori_id'   => $this->input->post('kategori_id'),
            ];

            $this->Blogmodel->add_blog($tambah);
            redirect('Blog');
        }

        public function delete($id){
            $this->load->database();

            $this->db->where('blog_id', $id);
            $this->db->delete('tbl_blog');


            redirect('blog');
        }
    }

?>