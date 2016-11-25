<?php
class Menu extends MY_Model {
    // constructor
    function __construct() {
        parent::__construct();
    }
    
    public static $rules = [
        ['field'=>'id', 'label'=>'Menu code', 'rules'=> 'required|integer'],
        ['field'=>'name', 'label'=>'Item name', 'rules'=> 'required'],
        ['field'=>'description', 'label'=>'Item description', 'rules'=> 'required|max_length[256]'],
        ['field'=>'price', 'label'=>'Item price', 'rules'=> 'required|decimal'],
        // see $picture_rules ['field'=>'picture', 'label'=>'Item picture', 'rules'=> 'required'],
        ['field'=>'category', 'label'=>'Menu category', 'rules'=> 'required']
    ];

    public static $picture_rules = [
        'upload_path'   => './images/',
        'allowed_types' => 'gif|jpg|png',
        'max_size'      => 10000,   // Note: 10MB
        'max_width'     => 256,
        'max_height'    => 256,
    ];
}
?>