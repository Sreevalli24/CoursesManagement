package com.example.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.entity.Course;
import com.example.service.CourseDao;

@RestController
public class CourseController {
	
	@Autowired
	CourseDao courseDao;
	
	@GetMapping("/start")
	public ModelAndView getCourses(Model model) {
		
		ModelAndView mv = new ModelAndView("Course");
		
		model.addAttribute("courses", courseDao.getAllCourses());
		
		return mv;
	}	
	
	@GetMapping("/newCourse")
	public ModelAndView newCourse(Model model) {

		ModelAndView mv = new ModelAndView("newCourse");
		
		Long id = courseDao.generateId();
		
		Course courses = new Course();
		
	    courses.setCourseId(id);

		mv.addObject("courses", courses);

		return mv;

	}
	
	@GetMapping("/editCourse")
	public ModelAndView editCourse(@RequestParam("id") Long id) {

		ModelAndView mv = new ModelAndView("editCourse");
		
		Course updatedCourses = courseDao.getCourse(id);
		
		mv.addObject("courses", updatedCourses);

		return mv;
	}
	
	@GetMapping("/removeCourse")
	public ModelAndView removeCourse(@RequestParam("id") Long id) {

		ModelAndView mv = new ModelAndView("redirect:/start");

		courseDao.deleteCourse(id);

		return mv;
	}
	
	@PostMapping("/save")
	public ModelAndView saveCourse(@ModelAttribute("courses") Course course ) {

		ModelAndView mv = new ModelAndView("redirect:/start");

		courseDao.saveCourses(course);

		return mv;

	}
}