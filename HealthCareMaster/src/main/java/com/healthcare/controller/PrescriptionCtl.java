package com.healthcare.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.healthcare.dto.PrescriptionFormDto;
import com.healthcare.repository.PrescriptionRepository;


@Controller
public class PrescriptionCtl {
	
	@Autowired
	PrescriptionRepository servicerepo;

	@GetMapping({ "/", "/PrescriptionForm" })
	public String PrescriptionFormDisplay(Model model) {
		return "jsp/prescriptionform";
	}
	
	@PostMapping("/PrescriptionForm")
	public String PrescriptionFormSubmit(@ModelAttribute("form") PrescriptionFormDto form, Model model) {
		servicerepo.save(form);
		model.addAttribute("SuccessMsg", "Data Successfully Submitted");
		return "jsp/prescriptionform";
	}
	

	@GetMapping("/PrescriptionList")
	public String PrescriptionListmDisplay(Model model) {
		List list= servicerepo.findAll();
		model.addAttribute("list", list);
		return "jsp/prescriptionlist";
	}
	
	@GetMapping("/edit/{id}")
	public String showUpdateForm(@PathVariable("id") long id, Model model) {
		PrescriptionFormDto form = servicerepo.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("Invalid Form Id:" + id));
		model.addAttribute("form", form);
		return "jsp/prescriptionformupdate";
	}
	
	@GetMapping("/delete/{id}")
	public String showUpdatedelete(@PathVariable("id") long id, Model model) {
		PrescriptionFormDto form = servicerepo.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("Invalid Form Id:" + id));
		servicerepo.delete(form);
		model.addAttribute("DeleteMsg", "Data Successfully Deleted");
		return "redirect:/PrescriptionList";
	}


	@PostMapping("/edit/PrescriptionFormUpdate")
	public String UpdateForm(@ModelAttribute("form") PrescriptionFormDto form, Model model) {
		servicerepo.save(form);
		PrescriptionFormDto formdata = servicerepo.findById(form.getId())
				.orElseThrow(() -> new IllegalArgumentException("Invalid Form Id:" + form.getId()));
		servicerepo.save(formdata);
		model.addAttribute("UpdateMsg", "Data Successfully Updateded");
		return "redirect:/PrescriptionList";
	}


}

