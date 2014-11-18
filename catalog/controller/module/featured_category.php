<?php
class ControllerModuleFeaturedCategory extends Controller {
	public function index($setting) {
		$this->load->language('module/featured_category');

		$data['heading_title'] = $this->language->get('heading_title');
		$data['description'] = $this->language->get('description');
				
		$data['categories'] = array();

		$categories_1 = $this->model_catalog_category->getCategories(0);
		foreach ($categories_1 as $category_1) {
			$level_2_data = array();
			
			$categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);
			
			foreach ($categories_2 as $category_2) {
				$level_3_data = array();
				$data['products'] = array();
					$filter_data = array(
						'filter_category_id' => $category_2['category_id'],
						'start'              => 0,
						'limit'              => '6',
					);
		
					$product_total = $this->model_catalog_product->getTotalProducts($filter_data);
		
					$results = $this->model_catalog_product->getProducts($filter_data);
		
					foreach ($results as $result) {
						$data['products'][] = array(
							'product_id'  => $result['product_id'],
							'thumb'       => $this->model_tool_image->resize($result['image'], 90, 90 ),
							'name'        => $result['name'],
							'href'        => $this->url->link('product/product', '&product_id=' . $result['product_id']),
							'products' => $data['products']
						);
				}
				$categories_3 = $this->model_catalog_category->getCategories($category_2['category_id']);
				
				foreach ($categories_3 as $category_3) {
					$data['products'] = array();
					$filter_data = array(
						'filter_category_id' => $category_3['category_id'],
						'start'              => 0,
						'limit'              => '6',
					);
		
					$product_total = $this->model_catalog_product->getTotalProducts($filter_data);
		
					$results = $this->model_catalog_product->getProducts($filter_data);
		
					foreach ($results as $result) {
						$data['products'][] = array(
							'product_id'  => $result['product_id'],
							'thumb'       => $this->model_tool_image->resize($result['image'], 90, 90 ),
							'name'        => $result['name'],
							'href'        => $this->url->link('product/product', '&product_id=' . $result['product_id']),
							'products' => $data['products']
						);
				}
					$level_3_data[] = array(
						'id' => $category_3['category_id'],
						'name' => $category_3['name'],
						'href' => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id']),
						'products' => $data['products']
					);
				}
				
				//level 2
				$level_2_data[] = array(
					'id' => $category_2['category_id'],
					'name'     => $category_2['name'],
					'children' => $level_3_data,
					'href'     => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id']),
					'products' => $data['products']
				);	
				
			}
			
			$data['products'] = array();

			$filter_data = array(
				'filter_category_id' => $category_1['category_id'],
				'start'              => 0,
				'limit'              => 6,
			);

			$product_total = $this->model_catalog_product->getTotalProducts($filter_data);

			$results = $this->model_catalog_product->getProducts($filter_data);

			foreach ($results as $result) {
				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $this->model_tool_image->resize($result['image'], 90, 90),
					'name'        => $result['name'],
					'href'        => $this->url->link('product/product', '&product_id=' . $result['product_id'])
				);
			}
			
			//level 1
			$data['categories'][] = array(
				'id' => $category_1['category_id'],
				'name'     => $category_1['name'],
				'children' => $level_2_data,
				'href'     => $this->url->link('product/category', 'path=' . $category_1['category_id']),
				'products' => $data['products']
			);
		}		
			
		$data['featured_category_cat'] = array();
		
		$results = $this->config->get('featured_category_cat');
		foreach($results as $result){			
			$data['featured_category_cat'][] = array(
				'cat'      => $result['cat'],
				'catImg'   => $this->model_tool_image->resize($result['image'], 140, 90 )
			);
		
		}
		return $this->load->view($this->config->get('config_template') . '/template/module/featured_category.tpl', $data);
		
	}
}