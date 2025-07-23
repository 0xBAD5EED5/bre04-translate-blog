<?php

class CategoryController {
    public function category() {
        $categoryManager = new CategoryManager();
        $categorys = $categoryManager->findAll();
        require __DIR__ . '/../templates/categorys.phtml';
    }
}
