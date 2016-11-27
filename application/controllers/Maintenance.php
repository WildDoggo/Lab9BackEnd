<?php

/**
 * REST server for ferry schedule operations.
 * This one manages ports.
 *
 * ------------------------------------------------------------------------
 */
require APPPATH . '/third_party/restful/libraries/Rest_controller.php';

class Maintenance extends Rest_Controller 
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('menu');
	}

    // Handle an incoming GET with url query string
    function index_get()
    {
        // get value in .../maintenance?id=value
        $key = $this->get('id');
        
        // handle .../maintenance/ 
        if (!$key)
        {
            $this->response($this->menu->all(), 200);
        } 
        else 
        {
            $result = $this->menu->get($key);
            if ($result != null)
                $this->response($result, 200);
            else
                $this->response(array('error' => 'Menu item not found!'), 404);
        }
    }

    // Handle an incoming GET with url arguments
    function item_get()
    {
        // get value in .../maintenance/item/id/value
        $key = $this->get('id');
        $result = $this->menu->get($key);
        if ($result != null)
            $this->response($result, 200);
        else
            $this->response(array('error' => 'Menu item not found!'), 404);        
    }

    // Handle an incoming POST with url query string
    function index_post()
    {
        $key = $this->get('id');
        $record = array_merge(array('id' => $key), $_POST);
        $this->menu->add($record);
        $this->response(array('ok'), 200);
    }

    // Handle an incoming POST with url arguments 
    function item_post()
    {
        $key = $this->get('id');
        $record = array_merge(array('id' => $key), $_POST);
        $this->menu->add($record);
        $this->response(array('ok'), 200);
    }

    // Handle an incoming PUT - update a menu item
    function index_put()
    {
        $key = $this->get('id');
        $record = array_merge(array('id' => $key), $this->_put_args);
        $this->menu->update($record);
        $this->response(array('ok'), 200);
    }

    // Handle an incoming DELETE - delete a menu item
    function item_delete()
    {
        $key = $this->get('id');
        $this->menu->delete($key);
        $this->response(array('ok'), 200);
    }
}
