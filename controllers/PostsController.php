<?php

class PostsController {
    public function posts() {
        $postManager = new PostManager();
        $posts = $postManager->findAll();
        require __DIR__ . '/../templates/posts.phtml';
    }
}
