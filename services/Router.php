<?php
class Router
{
    private PostsController $pc;
    private CategoryController $cc;

    public function __construct()
    {
        $this->pc = new PostsController();
        $this->cc = new CategoryController();
    }
    public function handleRequest(array $get) : void
    {
        if (isset($get["route"]) && $get["route"] === "posts")
        {
            $this->pc->posts();
        }
        else if(isset($get["route"]) && $get["route"] === "categorys")
        {
            $this->cc->category();
        }
        else
        {
            $this->cc->category();
        }
    }
}