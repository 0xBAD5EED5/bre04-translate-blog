<?php

class Post
{
    private ?int $id = null;

    public function __construct(
        private string $title_en,
        private string $excerpt_en,
        private string $title_fr,
        private string $excerpt_fr,
        private Category $category,
    ) {}

    // ID
    public function getId(): ?int
    {
        return $this->id;
    }
    public function setId(?int $id): void
    {
        $this->id = $id;
    }

    // Title_en
    public function getTitle_en(): string
    {
        return $this->title_en;
    }
    public function setTitle_en(string $title_en): void
    {
        $this->title_en = $title_en;
    }

    // Excerpt_en
    public function getExcerpt_en(): string
    {
        return $this->excerpt_en;
    }
    public function setExcerpt_en(string $excerpt_en): void
    {
        $this->excerpt_en = $excerpt_en;
    }

    // Title_fr
    public function getTitle_fr(): string
    {
        return $this->title_fr;
    }
    public function setTitle_fr(string $title_fr): void
    {
        $this->title_fr = $title_fr;
    }
    
    // Excerpt_fr
    public function getExcerpt_fr(): string
    {
        return $this->excerpt_fr;
    }
    public function setExcerpt_fr(string $excerpt_fr): void
    {
        $this->excerpt_fr = $excerpt_fr;
    }
   
	// Category
    public function getCategory(): Category
    {
        return $this->category;
    }
    public function setCategory(Category $category): void
    {
        $this->category = $category;
    }
}
