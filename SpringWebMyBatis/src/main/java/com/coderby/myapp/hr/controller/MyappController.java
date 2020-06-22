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
		model.addAttribute("lec_list", lec_list);
		List<Map<String, Object>> assign_list = myappService.getListAssign();
		model.addAttribute("assign_list",assign_list);
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
	
	//-------enterprise update, insert
	@RequestMapping(value="/enterprise/update")
	public String updateEntG( int ent_id, Model model)
	{
		model.addAttribute("ent", myappService.getEntInfo(ent_id));
		return "sch/update/update_ent";
	}
	
	@RequestMapping(value="/enterprise/update", method=RequestMethod.POST)
	public String updateEnt( int ent_id, Model model)
	{
		model.addAttribute("ent", myappService.getEntInfo(ent_id));
		return "sch/update/update_ent";
	}
	
	@RequestMapping(value="/enterprise/insert")
	public String insertEntG(int ent_id, Model model)
	{
		model.addAttribute("ent", myappService.getEntInfo(ent_id));
		return "sch/insert/insert_ent";
	}
	
	
	@RequestMapping(value="/enterprise/insert",method=RequestMethod.POST)
	public String insertEnt(int ent_id, Model model)
	{
		model.addAttribute("ent", myappService.getEntInfo(ent_id));
		return "sch/insert/insert_ent";
	}
	
	//-----------lecture update, insert
	@RequestMapping(value="/lecture/update")
	public String updateLec(int ent_id, Model model)
	{
		model.addAttribute("lec", myappService.getLecInfo(ent_id));
		return "sch/update/update_lec";
	}
	
	@RequestMapping(value="/lecture/insert", method=RequestMethod.POST)
	public String insertLec(@PathVariable int ent_id, Model model)
	{
		model.addAttribute("lec", myappService.getLecInfo(ent_id));
		return "sch/insert/insert_lec";
	}
	
	@RequestMapping(value="/lecture/delete", method=RequestMethod.GET)
	public String deleteLecG(int lec_id, Model model)
	{
		model.addAttribute("lec",myappService.getLecInfo(lec_id) );
		return "sch/delete/delete_lec";
	}
	
	@RequestMapping(value="/lecture/delete", method=RequestMethod.POST)
	public String deleteLec(int lec_id, Model model)
	{
		myappService.deleteLec(lec_id);
		return "redirect:/lecture";
	}

	
	//delete------------
	@RequestMapping(value="/enterprise/delete", method=RequestMethod.GET)
	public String deleteEntG(int ent_id, Model model)
	{
		model.addAttribute("ent",myappService.getEntInfo(ent_id));
		return "sch/delete/delete_ent";
	}
	
	@RequestMapping(value="/enterprise/delete", method=RequestMethod.POST)
	public String deleteEnt(int ent_id, Model model)
	{
		myappService.deleteEnt(ent_id);
		return "redirect:/enterprise";
	}
	
}
