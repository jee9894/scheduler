package com.coderby.myapp.hr.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.coderby.myapp.hr.model.EntVO;
import com.coderby.myapp.hr.service.IMyappService;
import com.coderby.myapp.hr.service.MyappService;
@Controller
public class MyappController {

private static final Logger logger = LoggerFactory.getLogger(MyappController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	IMyappService myappService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		model.addAttribute("key",myappService.getEntCount());
		System.out.println(myappService.getEntCount());
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "home";
	}
	
	@RequestMapping(value="/enterprise")
	public String getAllEnt(Model model)
	{
		List<Map<String, Object>>  ent_list = myappService.getListEnt();
		model.addAttribute("ent_list", ent_list); 
		System.out.println(ent_list);
		return "sch/enterprise";
	}
	@RequestMapping(value="/lecture")
	public String getAllLec(Model model)
	{
		List<Map<String, Object>> lec_list = myappService.getListLec();
		model.addAttribute(lec_list);
		List<Map<String, Object>> assign_list = myappService.getListAssign();
		model.addAttribute(assign_list);
		return "sch/lecture";
	}
	@RequestMapping(value="/lecture/{lec_id}")
	public String getIdLec(@PathVariable int lec_id, Model model)
	{
		List<Map<String, Object>> lec_list = myappService.getListLec(lec_id);
		List<Map<String, Object>> assign_list = myappService.getListAssign(lec_id);
		model.addAttribute("lec_list", lec_list);
		model.addAttribute("assign_list", assign_list);
		return "sch/lecture";
	}
	
}
