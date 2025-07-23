<?php

class CategoryManager extends AbstractManager
{
    public function __construct()
    {
        parent::__construct();
    }
    
    public function findAll(): array
	{
    	$stmt = $this->db->query("SELECT * FROM posts");
    	$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    	$categorys = [];

    	foreach ($rows as $row) {
        	$category = new Post(
            	$row['title_fr'],
            	$row['description_fr'],
        	);
        	$category->setId($row['id']);
        	$categorys[] = $category;
    	}
    	return $categorys;
	}
}
