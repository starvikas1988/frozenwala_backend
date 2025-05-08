<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends MY_Controller {
	protected $cloud_db;
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->cloud_db = $this->load->database('cloud', TRUE);
		$this->load_info();
		is_sql_full_group_by_enabled();
	}

	public function langauge($id){
		$this->load->model('language_model');
        $this->language_model->set($id);
        redirect($_SERVER['HTTP_REFERER']);
	}

	public function test_local_db() {
        // Example: Fetch from local database
		echo '<pre>';
		print_r($this->db->list_tables() );
        echo "<pre>Local DB Result:\n";
       
    }

	public function test_cloud_db() {
        // Example: Fetch from cloud database
        // $query = $this->cloud_db->get('Frozenwala_db');
        // $result = $query->result();
		echo '<pre>';
		print_r($this->cloud_db->list_tables() );
        echo "<pre>Cloud DB Result:\n";
       // print_r($result);
    }

	public function index()
	{	
		//Verify PHP version
		if(phpversion()>required_php_version()){
			$heading = "Invalid Server Configuration!";
			$message = "Application need PHP Version <b>7.4</b>, Your server loaded with PHP Version <b>".phpversion()."</b>";
			$message .= "<br><a href=".base_url().">Refresh</a>";

			show_error($message, null, $heading);
			exit;
		}
		if($this->session->userdata('logged_in')==1){ redirect(base_url().'dashboard','refresh');	}
		$data = $this->data;
		$this->load->view('login',$data);
	}
	public function verify()
	{
		//print_r($_POST);exit;
		$this->form_validation->set_rules('email','Email','required');
		$this->form_validation->set_rules('pass','Password','required');
		if($this->form_validation->run()==FALSE){
			$this->session->set_flashdata('failed', 'Please Enter Email & password!');
			redirect('login');
		}
		else{

			$email=$this->input->post('email');
			$password=$this->input->post('pass');
			

			$this->load->model('login_model');//Model
			$this->login_model->verify_credentials($email,$password);
			
		}
	}
	public function forgot_password(){
		if($this->session->userdata('logged_in')==1){ redirect(base_url().'dashboard','refresh');	}
		$data = $this->data;
		$this->load->view('forgot-password',$data);
	}
	public function send_otp(){		
		$this->form_validation->set_rules('email', 'Email', 'required|valid_email');
		
		if($this->form_validation->run()==FALSE){
			$this->session->set_flashdata('failed', 'Invalid Email!');
			redirect(base_url().'login/forgot_password');
		}
		else{
			$email=$this->input->post('email');
			$this->load->model('login_model');//Model
			$response = $this->login_model->verify_email_send_otp($email);

			if($response==true){//Model->Method
				redirect(base_url().'login/otp');
			}
			else{
				redirect(base_url().'login/forgot_password');
			}			
		}
	}
	public function otp(){
		if($this->session->userdata('logged_in')==1){ redirect(base_url().'dashboard','refresh');	}
		$data = $this->data;
		$this->load->view('otp',$data);
	}
	public function verify_otp(){
		$this->form_validation->set_rules('otp', 'OTP', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');
		
		if($this->form_validation->run()==FALSE){
			$this->session->set_flashdata('failed', 'Invalid OTP!');
			redirect(base_url().'login/otp');
		}
		else{
			$otp=$this->input->post('otp');
			$email=$this->input->post('email');
			
			if($this->session->userdata('email')==$email && $this->session->userdata('otp')==$otp){
				$data=$this->data;
				$data['email']=$email;
				$data['otp']=$otp;
				
				$this->load->view("change-login-password",$data);
			}
			else{
				$this->session->set_flashdata('failed', 'Invalid OTP!!');
				redirect(base_url().'login/otp');
			}			
		}
	}
	public function change_password(){

		$this->form_validation->set_rules('otp', 'OTP', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');
		$this->form_validation->set_rules('cpassword', 'Confirm Password', 'required');
		
		//print_r($_POST);exit;
		if($this->form_validation->run()==FALSE){
			$this->session->set_flashdata('failed', 'Please Enter Correct Passwords!');
			redirect(base_url().'login/verify_otp');
		}
		else{
			$otp=$this->input->post('otp');
			$email=$this->input->post('email');
			$password=$this->input->post('password');
			$cpassword=$this->input->post('cpassword');
			$this->load->model('login_model');//Model
			if($password==$cpassword && $this->session->userdata('email')==$email && $this->session->userdata('otp')==$otp){
				if($this->login_model->change_password($password,$email)){//Model->Method
					$data = $this->data;
					$array_items = array('email','otp');
					$this->session->unset_userdata($array_items);
					$this->session->set_flashdata('success', 'Password Changed Successfully!');
					redirect(base_url().'login','refresh');
				}
				else{
					$data=$this->data;
    				$data['email']=$email;
    				$data['otp']=$otp;
    				$this->session->set_flashdata('failed', 'Password Mismatched!');
    				$this->load->view("change-login-password",$data);
				}			
			}
			else{
			        $data=$this->data;
    				$data['email']=$email;
    				$data['otp']=$otp;
    				$this->session->set_flashdata('failed', 'Password Mismatched!');
    				$this->load->view("change-login-password",$data);
			}
		}

	}
	

}
