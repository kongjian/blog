package main

import (
	"github.com/astaxie/beego"
	_ "github.com/kongjian/blog/models"
	_ "github.com/kongjian/blog/routers"
)

func main() {
	beego.Run()
}
