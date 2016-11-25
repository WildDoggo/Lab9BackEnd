<?php

class Maintenance extends Application{
    
    public function __construct() {
        parent::__construct();
        $this->load->helper('formfields', 'form', 'url');
        $this->load->library('form_validation');
    }
    
    public function index() {
        // Warning: Below prevents access to the index page ONLY
        // Get current user's role
        $userrole = $this->session->userdata('userrole');
        
        // Prevent access unless user is admin.
        if ($userrole != 'admin') {
            $message = 'You are not authorized to access this page. Go away';
            $this->data['content'] = $message;
            $this->render();
            return;
        }
        
        // Display CRUD controls
        $message = 'Get ready to fix stuff.';
        $this->data['pagebody'] = 'maintenance-index';
        $this->data['items'] = $this->menu->all();
        $this->render();
    }
    
    public function create() {
        $this->load_form_data();
        $this->data['errors'] = "";
        $this->data['pagebody'] = "maintenance-edit";
        $this->render();
    }
    
    public function edit($id=null) {
        /* Note: Too unreliable (Back button, click index, manual search)
        // find the record through the session first
        $key = $this->session->userdata('key');
        $record = $this->session->userdata('record'); */
        
        // Retrieve record
        if (empty($key)) {
            $record = $this->menu->get($id);        // Warning: Record not found not handled
            $key = $id;
            $this->session->set_userdata('key',$id);
            $this->session->set_userdata('record',$record);
        }
        
        // Load data
        $this->load_form_data($record);
        $this->data['errors'] = "";
        
        // show the editing form
        $this->data['pagebody'] = "maintenance-edit";
        $this->render();
    }
    
    // POST
    public function save() {
        /* Note: Too unreliable (see above)
        // try the session first
        $key = $this->session->userdata('key');
        $record = $this->session->userdata('record');
        // if not there, nothing is in progress
        if (empty($record)) {
        $this->index();
        } */

        $this->load->library('upload', Menu::$picture_rules); 

        // Retrieve form data 
        $record = $this->input->post();  // Note: This works unless you want to reload form data 
                
        // Validate form data and attempt to upload image 
        $this->form_validation->set_rules(Menu::$rules);
        if ($this->form_validation->run() == FALSE          // Validate form 
            || !$this->upload->do_upload('picture'))
        {
            $this->data['pagebody'] = "maintenance-edit";
            $this->data['errors'] = validation_errors() . $this->upload->display_errors();
            $this->load_form_data($record);                 // Refill the form with previous data. 
            $this->render();
        }
        else
        {
            // Manually set the filename as the column value 
            $record['picture'] = $this->upload->client_name; 

            // Add or Update
            if (!$this->menu->exists($record['id'])) {
                $this->menu->add($record);
            } else {
                $this->menu->update($record);
            }

            // Return to index 
            redirect('maintenance');
            // $this->load->view('formsuccess');
        }
    }
    
    public function delete($id) {
        $this->menu->delete($id);
        redirect('maintenance');
    }
    
    private function load_form_data($record=null) {
        // convert object to associative array, if needed
        if (is_object($record))
            $data = get_object_vars($record);
        else
            $data = $record;
        
        // initialize any other related data
        $categories = $this->categories->all();     // get an array of category objects
        foreach($categories as $code => $category)  // make it into an associative array
            $codes[$code] = $category->name;
        $picture = (isset($data['picture'])) ? $data['picture'] : "";   // Note: If an upload fails, this will be unset. 
        
        // build the form fields
        $this->data['fid'] = makeTextField('Menu code', 'id', $data['id']);
        $this->data['fname'] = makeTextField('Item name', 'name', $data['name']);
        $this->data['fdescription'] = makeTextArea('Description', 'description', $data['description']);
        $this->data['fprice'] = makeTextField('Price, each', 'price', $data['price']);
        $this->data['fpicture'] = makeFileUpload('Picture', 'picture', $picture);
        $this->data['fcategory'] = makeCombobox('Category', 'category', $data['category'], $codes);
        $this->data['zsubmit'] = makeSubmitButton('Save', 'Submit changes');
    }
    
    function cancel() {
        $this->session->unset_userdata('key');
        $this->session->unset_userdata('record');
        $this->index();
    }
    
}