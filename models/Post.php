<?php

class Post
{
    private ?int $id = null;

    public function __construct(
        private string $title,
        private string $excerpt,
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

    // Title
    public function getTitle(): string
    {
        return $this->title;
    }
    public function setTitle(string $title): void
    {
        $this->title = $title;
    }

    // Excerpt
    public function getExcerpt(): string
    {
        return $this->excerpt;
    }
    public function setExcerpt(string $excerpt): void
    {
        $this->excerpt = $excerpt;
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
