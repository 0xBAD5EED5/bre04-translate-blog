<?php
class PostsController
{
    public function __construct() {}
    
    public function posts() : void {
		$route = "posts";
		require 'templates/layout.phtml';
	}
}