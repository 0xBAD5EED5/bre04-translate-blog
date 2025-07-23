<?php
class CategoryController
{
    public function __construct() {}
    
    public function category() : void {
		$route = "catégories";
		require 'templates/layout.phtml';
	}
}