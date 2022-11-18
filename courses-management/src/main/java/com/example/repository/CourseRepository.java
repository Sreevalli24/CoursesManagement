package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.entity.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {
	
	@Query("select max(courseId) from Course")
	public Long findMaxCourseId();
}