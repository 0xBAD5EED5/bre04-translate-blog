<?php

class PostManager extends AbstractManager
{
    public function __construct()
    {
        parent::__construct();
    }
    
    
    public function findAll(): array
	{
    	$stmt = $this->db->query("SELECT * FROM posts");
    	$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    	$posts = [];

    	foreach ($rows as $row) {
        	$post = new Post(
            	$row['title_fr'],
            	$row['excerpt_fr'],
            	$row['category'],
        	);
        	$post->setId($row['id']);
        	$posts[] = $post;
    	}
    	return $posts;
	}
}
