package com.example.service;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.entity.Course;
import com.example.repository.CourseRepository;


@Service
public class CourseService {
	
    @Autowired
     CourseRepository courseRepository;
    
    public List<Course> getAllCourses() {
        return courseRepository.findAll();
    }
    
    public void saveCourses(Course course) {
    	courseRepository.save(course);
    }
    
    public  Course getCourse(Long id) {
		Optional<Course> result = courseRepository.findById(id);
		return result.get();
	}
    
    public void deleteCourse(Long id) {
		courseRepository.deleteById(id);
	}
    
    public Long generateId() {
    	Long val = courseRepository.findMaxCourseId();
    	if(val == null)
    		val = 101L;
    	else
    		val = val + 1;
    	return val;
    } 
}