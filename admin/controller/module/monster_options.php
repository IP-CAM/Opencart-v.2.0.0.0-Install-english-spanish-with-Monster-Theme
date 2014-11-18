<?php 
class ControllerModuleMonsterOptions extends Controller {
	private $error = array();
	
	public function index() {
		$this->load->language('module/monster_options');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting'); 
		$this->load->model('tool/image');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('monster_options', $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}	
		
		$this->document->addStyle('view/stylesheet/colorpicker.css');
		$this->document->addScript('view/javascript/colorpicker.js');
		
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_module_add'] = $this->language->get('button_module_add');
		$data['button_remove'] = $this->language->get('button_remove');
		$data['entry_status'] = $this->language->get('entry_status');
		
			
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
			'href' => $this->url->link('module/monster_options', 'token=' . $this->session->data['token'], 'SSL')
		);
				
		$data['action'] = $this->url->link('module/monster_options', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
				
		if (isset($this->request->post['monster_options_main_bg'])) {
			$data['monster_options_main_bg'] = $this->request->post['monster_options_main_bg'];
		} else {
			$data['monster_options_main_bg'] = $this->config->get('monster_options_main_bg');
		}		
				
		if (isset($this->request->post['monster_options_bg_color'])) {
			$data['monster_options_bg_color'] = $this->request->post['monster_options_bg_color'];
		} else {
			$data['monster_options_bg_color'] = $this->config->get('monster_options_bg_color');
		}
		
		if (isset($this->request->post['monster_options_header_bg'])) {
			$data['monster_options_header_bg'] = $this->request->post['monster_options_header_bg'];
		} else {
			$data['monster_options_header_bg'] = $this->config->get('monster_options_header_bg');
		}
		
		if (isset($this->request->post['monster_options_top_links_color'])) {
			$data['monster_options_top_links_color'] = $this->request->post['monster_options_top_links_color'];
		} else {
			$data['monster_options_top_links_color'] = $this->config->get('monster_options_top_links_color');
		}
		
		if (isset($this->request->post['monster_options_search_btn'])) {
			$data['monster_options_search_btn'] = $this->request->post['monster_options_search_btn'];
		} else {
			$data['monster_options_search_btn'] = $this->config->get('monster_options_search_btn');
		}
		
		if (isset($this->request->post['monster_options_search_btn_color'])) {
			$data['monster_options_search_btn_color'] = $this->request->post['monster_options_search_btn_color'];
		} else {
			$data['monster_options_search_btn_color'] = $this->config->get('monster_options_search_btn_color');
		}
		
		if (isset($this->request->post['monster_options_cat_color'])) {
			$data['monster_options_cat_color'] = $this->request->post['monster_options_cat_color'];
		} else {
			$data['monster_options_cat_color'] = $this->config->get('monster_options_cat_color');
		}
		
		if (isset($this->request->post['monster_options_cat_arrow'])) {
			$data['monster_options_cat_arrow'] = $this->request->post['monster_options_cat_arrow'];
		} else {
			$data['monster_options_cat_arrow'] = $this->config->get('monster_options_cat_arrow');
		}
		
		if (isset($this->request->post['monster_options_slide_arrow'])) {
			$data['monster_options_slide_arrow'] = $this->request->post['monster_options_slide_arrow'];
		} else {
			$data['monster_options_slide_arrow'] = $this->config->get('monster_options_slide_arrow');
		}
		
		if (isset($this->request->post['monster_options_title_color'])) {
			$data['monster_options_title_color'] = $this->request->post['monster_options_title_color'];
		} else {
			$data['monster_options_title_color'] = $this->config->get('monster_options_title_color');
		}
		
		if (isset($this->request->post['monster_options_price_color'])) {
			$data['monster_options_price_color'] = $this->request->post['monster_options_price_color'];
		} else {
			$data['monster_options_price_color'] = $this->config->get('monster_options_price_color');
		}
		
		if (isset($this->request->post['monster_options_add_to_cart'])) {
			$data['monster_options_add_to_cart'] = $this->request->post['monster_options_add_to_cart'];
		} else {
			$data['monster_options_add_to_cart'] = $this->config->get('monster_options_add_to_cart');
		}
		
		if (isset($this->request->post['monster_options_add_to_cart_icon'])) {
			$data['monster_options_add_to_cart_icon'] = $this->request->post['monster_options_add_to_cart_icon'];
		} else {
			$data['monster_options_add_to_cart_icon'] = $this->config->get('monster_options_add_to_cart_icon');
		}
		
		if (isset($this->request->post['monster_options_add_to_cart_text'])) {
			$data['monster_options_add_to_cart_text'] = $this->request->post['monster_options_add_to_cart_text'];
		} else {
			$data['monster_options_add_to_cart_text'] = $this->config->get('monster_options_add_to_cart_text');
		}
		
		
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		
		if (isset($this->request->post['monster_options_banner_one'])) {
			$data['banner_one'] = $this->request->post['monster_options_banner_one'];
		} else {
			$data['banner_one'] = $this->config->get('monster_options_banner_one');
		}

		if (isset($this->request->post['monster_options_banner_one']) && is_file(DIR_IMAGE . $this->request->post['monster_options_banner_one'])) {
			$data['banner1'] = $this->model_tool_image->resize($this->request->post['monster_options_banner_one'], 100, 100);
		} elseif ($this->config->get('monster_options_banner_one') && is_file(DIR_IMAGE . $this->config->get('monster_options_banner_one'))) {
			$data['banner1'] = $this->model_tool_image->resize($this->config->get('monster_options_banner_one'), 100, 100);
		} else {
			$data['banner1'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		
		if (isset($this->request->post['monster_options_banner_one_url'])) {
			$data['monster_options_banner_one_url'] = $this->request->post['monster_options_banner_one_url'];
		} else {
			$data['monster_options_banner_one_url'] = $this->config->get('monster_options_banner_one_url');
		}
		
		if (isset($this->request->post['monster_options_banner_two'])) {
			$data['banner_two'] = $this->request->post['monster_options_banner_two'];
		} else {
			$data['banner_two'] = $this->config->get('monster_options_banner_two');
		}

		if (isset($this->request->post['monster_options_banner_two']) && is_file(DIR_IMAGE . $this->request->post['monster_options_banner_two'])) {
			$data['banner2'] = $this->model_tool_image->resize($this->request->post['monster_options_banner_two'], 100, 100);
		} elseif ($this->config->get('monster_options_banner_two') && is_file(DIR_IMAGE . $this->config->get('monster_options_banner_two'))) {
			$data['banner2'] = $this->model_tool_image->resize($this->config->get('monster_options_banner_two'), 100, 100);
		} else {
			$data['banner2'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		
		if (isset($this->request->post['monster_options_banner_two_url'])) {
			$data['monster_options_banner_two_url'] = $this->request->post['monster_options_banner_two_url'];
		} else {
			$data['monster_options_banner_two_url'] = $this->config->get('monster_options_banner_two_url');
		}
		
		if (isset($this->request->post['monster_options_banner_three'])) {
			$data['banner_three'] = $this->request->post['monster_options_banner_three'];
		} else {
			$data['banner_three'] = $this->config->get('monster_options_banner_three');
		}

		if (isset($this->request->post['monster_options_banner_three']) && is_file(DIR_IMAGE . $this->request->post['monster_options_banner_three'])) {
			$data['banner3'] = $this->model_tool_image->resize($this->request->post['monster_options_banner_three'], 100, 100);
		} elseif ($this->config->get('monster_options_banner_three') && is_file(DIR_IMAGE . $this->config->get('monster_options_banner_three'))) {
			$data['banner3'] = $this->model_tool_image->resize($this->config->get('monster_options_banner_three'), 100, 100);
		} else {
			$data['banner3'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		
		if (isset($this->request->post['monster_options_banner_three_url'])) {
			$data['monster_options_banner_three_url'] = $this->request->post['monster_options_banner_three_url'];
		} else {
			$data['monster_options_banner_three_url'] = $this->config->get('monster_options_banner_three_url');
		}
		
		if (isset($this->request->post['monster_options_google_lat'])) {
			$data['monster_options_google_lat'] = $this->request->post['monster_options_google_lat'];
		} else {
			$data['monster_options_google_lat'] = $this->config->get('monster_options_google_lat');
		}
		
		if (isset($this->request->post['monster_options_google_lng'])) {
			$data['monster_options_google_lng'] = $this->request->post['monster_options_google_lng'];
		} else {
			$data['monster_options_google_lng'] = $this->config->get('monster_options_google_lng');
		}
		
		if (isset($this->request->post['monster_options_map_icon'])) {
			$data['mapIcon'] = $this->request->post['monster_options_map_icon'];
		} else {
			$data['mapIcon'] = $this->config->get('monster_options_map_icon');
		}

		if (isset($this->request->post['monster_options_map_icon']) && is_file(DIR_IMAGE . $this->request->post['monster_options_map_icon'])) {
			$data['map_icon'] = $this->model_tool_image->resize($this->request->post['monster_options_map_icon'], 100, 100);
		} elseif ($this->config->get('monster_options_map_icon') && is_file(DIR_IMAGE . $this->config->get('monster_options_map_icon'))) {
			$data['map_icon'] = $this->model_tool_image->resize($this->config->get('monster_options_map_icon'), 100, 100);
		} else {
			$data['map_icon'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		
		if (isset($this->request->post['monster_options_fb'])) {
			$data['monster_options_fb'] = $this->request->post['monster_options_fb'];
		} else {
			$data['monster_options_fb'] = $this->config->get('monster_options_fb');
		}
		
		if (isset($this->request->post['monster_options_tw'])) {
			$data['monster_options_tw'] = $this->request->post['monster_options_tw'];
		} else {
			$data['monster_options_tw'] = $this->config->get('monster_options_tw');
		}
		
		if (isset($this->request->post['monster_options_pin'])) {
			$data['monster_options_pin'] = $this->request->post['monster_options_pin'];
		} else {
			$data['monster_options_pin'] = $this->config->get('monster_options_pin');
		}
		
		if (isset($this->request->post['monster_options_yt'])) {
			$data['monster_options_yt'] = $this->request->post['monster_options_yt'];
		} else {
			$data['monster_options_yt'] = $this->config->get('monster_options_yt');
		}
				
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		
		$this->response->setOutput($this->load->view('module/monster_options.tpl', $data));
		
	}
	
protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/monster_options')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
	
	return !$this->error;		
	}	
} 