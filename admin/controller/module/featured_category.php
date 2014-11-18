<?php 
class ControllerModuleFeaturedCategory extends Controller {
	private $error = array();
	
	public function index() {
		$this->load->language('module/featured_category');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting'); 		
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('featured_category', $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}		
		
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		
		$data['entry_cat'] = $this->language->get('entry_cat');
		$data['entry_thumb'] = $this->language->get('entry_thumb');
		$data['entry_image'] = $this->language->get('entry_image');
		$data['entry_width'] = $this->language->get('entry_width');
		$data['entry_height'] = $this->language->get('entry_height');
		$data['entry_status'] = $this->language->get('entry_status');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_module_add'] = $this->language->get('button_module_add');
		$data['button_remove'] = $this->language->get('button_remove');
		
		
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['image'])) {
			$data['error_image'] = $this->error['image'];
		} else {
			$data['error_image'] = array();
		}		
				
		if (isset($this->error['image_location'])) {
			$data['error_image_location'] = $this->error['image_location'];
		} else {
			$data['error_image_location'] = '';
		}
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/featured_category', 'token=' . $this->session->data['token'], 'SSL')
		);
		
		$data['action'] = $this->url->link('module/featured_category', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['token'] = $this->session->data['token'];
				
		if (isset($this->request->post['featured_category_category'])) {
			$data['featured_category_category'] = $this->request->post['featured_category_category'];
		} else { 
			$data['featured_category_category'] = $this->config->get('featured_category_category');
		}
		
		if (isset($this->request->post['featured_category_status'])) {
			$data['featured_category_status'] = $this->request->post['featured_category_status'];
		} else {
			$data['featured_category_status'] = $this->config->get('featured_category_status');
		}
		
		$this->load->model('catalog/category');
		
		$data['categories'] = array();

		$category_total = $this->model_catalog_category->getTotalCategories();
		$results = $this->model_catalog_category->getCategories(0);
		foreach ($results as $result) {
			$data['categories'][] = array(
				'category_id' => $result['category_id'],
				'name'        => $result['name'],
			);
		}

		$this->load->model('tool/image');
		
		$data['featured_category_cat'] = array();
				
		if (isset($this->request->post['featured_category_cat'])) {
			$modules = $this->request->post['featured_category_cat'];
		} elseif ($this->config->has('featured_category_cat')) {
			$modules = $this->config->get('featured_category_cat');
		} else {
			$modules = array();
		}
		
		foreach ($modules as $key => $module) {
			if (is_file(DIR_IMAGE . $module['image'])) {
				$image = $module['image'];
				$thumb = $module['image'];
			} else {
				$image = '';
				$thumb = 'no_image.png';
			}
			$data['featured_category_cat'][] = array(
				'key'    	  => $key,
				'image'       => $image,
				'thumb'       => $this->model_tool_image->resize($thumb, 100, 100),
				'cat'  	      => $module['cat'],
			);
		}
		
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);		
				
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/featured_category.tpl', $data));
		
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/featured_category')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (isset($this->request->post['featured_category'])) {
			foreach ($this->request->post['featured_category'] as $key => $value) {
				if (!$value['width'] || !$value['height']) {
					$this->error['image'][$key] = $this->language->get('error_image');
				}
			}
		}
		return !$this->error;		
	}	
} 

?>