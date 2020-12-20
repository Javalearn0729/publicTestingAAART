package tw.group4._14_.index.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import oracle.net.aso.m;
import oracle.security.o3logon.a;
import tw.group4._14_.back.ARTProduct;
import tw.group4._14_.back.dao.AlertsService;
import tw.group4._14_.index.dao.IndexDaoService;
import tw.group4.util.Hibernate;

@Controller
public class IndexController {
	
	@Autowired
	private IndexDaoService iService;
	
	@Autowired
	public AlertsService altService;
	
	@RequestMapping("/14/gototrytrysee")
	public String gototrytrysee(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		
	return "14/draft/trytrysee";
	}
	
	@RequestMapping("/14/scroller")
	public String gotoscroller(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		
	return "14/draft/ElementScroller";
	}
	
	@RequestMapping("/14/getSubView")
	@ResponseBody
	public ModelAndView trytrysee(HttpServletRequest request, HttpServletResponse response, Model model) {
		List list=new ArrayList();  
		list.add("aaa");  
		list.add("bbb");  
		list.add("ccc");  
	return new ModelAndView("14/subView", "list", list) ;
	}
	
	//傳給首頁熱門的前 9 筆商城商品
	@Hibernate
	@RequestMapping(path = "/14/indexShopHot", produces = "application/text; charset=utf-8")
	@ResponseBody
	public String indexShopHot() {

		List<ARTProduct> list = iService.selectShopHot();
		Gson gson = new Gson();

		String json = gson.toJson(list);

		return json;
	}

}
