package weblaptoponline.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import weblaptoponline.dao.ProductDAO;
import weblaptoponline.entity.Product;

@Controller
public class HomeController {
	@RequestMapping("/home/index")
	public String index() {
		return "home/index";
	}
	
	@RequestMapping("/home/about")
	public String about() {
		return "home/about";
	}
	@RequestMapping("/home/contact")
	public String contact() {
		return "home/contact";
	}
	
//	@Autowired
//	ProductDAO pdao;
//	
//	
//	@RequestMapping("/home/index")
//	public String index(Model model) {
//		List<Product> list=pdao.findAll();
//		model.addAttribute("items",list);
//		return "product/list";
//	}

}
