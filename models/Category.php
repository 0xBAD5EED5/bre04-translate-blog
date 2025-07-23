<?php

class Post
{
    private ?int $id = null;

    public function __construct(
        private string $title_en,
        private string $desciption_en,
        private string $title_fr,
        private string $desciption_fr,
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

    // Description_en
    public function getDescription_en(): string
    {
        return $this->description_en;
    }
    public function setDescription_en(string $description_en): void
    {
        $this->description_en = $description_en;
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
    
    // Description_fr
    public function getDescription_fr(): string
    {
        return $this->description_fr;
    }
    public function setDescription_fr(string $description_fr): void
    {
        $this->description_fr = $description_fr;
    }
}
