package com.cdac.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cdac.dao.AdminDao;
import com.cdac.dao.UserDao;
import com.cdac.model.Admin;
import com.cdac.model.Delete;
import com.cdac.model.Questions;
import com.cdac.model.User;


@SessionAttributes({ "session","counter1", "counter2", "counter3", "track", "answer", "result", "marks", "listofquestions" })

@Controller
public class controller {

	@Autowired
	UserDao userdao;



	@GetMapping("/")
	public ModelAndView start() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("HFirstPage");
		return mv;
	}

	@GetMapping("/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}


	@GetMapping("/signup")
	public ModelAndView signup() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");
		return mv;
	}

	@PostMapping("/signup")
	public ModelAndView registeruser(User user) {


		boolean val=this.userdao.createuser(user);
		if(val) {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("signin");
			return mv;}
		else {
			
			ModelAndView mv = new ModelAndView();
		
			mv.setViewName("signup");
			return mv;
		}
	}



	@GetMapping("/signin")
	public ModelAndView signin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signin");
		return mv;
	}




	@GetMapping("/logout")
	public ModelAndView logout()  {


		ModelAndView mv = new ModelAndView();
		mv.setViewName("signin");
		return mv;


	}



	@PostMapping("/signin")
	public String validateuser(ModelMap model,User user,HttpServletRequest req) {
		/* ModelAndView mv = new ModelAndView(); */
		try {
			boolean val = this.userdao.validateuser(user);
			if (val) {
				String session = (String) model.get("session");
				if (session == null)
					session =user.getUsername();

				model.put("session", session);


				return "home";
			} else {

				return "signin";
			}
		} catch (Exception e) {

			e.printStackTrace();

			return "signin";
		}
	}





	@GetMapping("/home")
	public ModelAndView gethome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}



	@PostMapping("/home")
	public String startquiz(ModelMap model, Questions questions) {




		Integer track = (Integer) model.get("track");
		if (track == null)
			track = 0;
		model.put("track", track);

		String answer = (String) model.get("answer");
		if (answer == null)
			answer = " ";

		model.put("answer", answer);
		Integer marks = (Integer) model.get("marks");

		if (track < 5) {

			if (questions.getTime() < 10 && Objects.equals(questions.getAnswer(), answer)) {

				if (marks == null)
					marks = 0;
				else
					marks++;
				model.put("marks", marks);
				List<Questions> list1 = new ArrayList<Questions>();

				list1 = (ArrayList<Questions>) this.userdao.getquestions(3);

				Integer counter1 = (Integer) model.get("counter1");
				if (counter1 == null)
					counter1 = 0;
				else
					counter1++;
				model.put("counter1", counter1);

				track++;
				model.put("track", track);

				Questions ans = list1.get(counter1);
				answer = ans.getAnswer();
				model.put("answer", answer);

				model.put("Question", list1.get(counter1));

				return "quiz";

			} else if (questions.getTime() < 10 && !(Objects.equals(questions.getAnswer(), answer))) {

				List<Questions> list3 = new ArrayList<Questions>();

				list3 = (ArrayList<Questions>) this.userdao.getquestions(1);

				Integer counter3 = (Integer) model.get("counter3");
				if (counter3 == null)
					counter3 = 0;
				else
					counter3++;
				model.put("counter3", counter3);

				track++;
				model.put("track", track);
				Questions ans = list3.get(counter3);
				answer = ans.getAnswer();
				model.put("answer", answer);

				model.put("Question", list3.get(counter3));

				return "quiz";

			}

			else if (questions.getTime() > 10 && questions.getTime() < 40
					&& Objects.equals(questions.getAnswer(), answer)) {

				if (marks == null)
					marks = 0;
				else
					marks++;
				model.put("marks", marks);
				List<Questions> list2 = new ArrayList<Questions>();


				list2 = (ArrayList<Questions>) this.userdao.getquestions(2);

				Integer counter2 = (Integer) model.get("counter2");
				if (counter2 == null)
					counter2 = 0;
				else
					counter2++;
				model.put("counter2", counter2);
				track++;
				model.put("track", track);

				Questions ans = list2.get(counter2);
				answer = ans.getAnswer();
				model.put("answer", answer);
				model.put("Question", list2.get(counter2));

				return "quiz";

			}

			else if (questions.getTime() > 10 && questions.getTime() < 40
					&& !(Objects.equals(questions.getAnswer(), answer))) {

				List<Questions> list3 = new ArrayList<Questions>();



				list3 = (ArrayList<Questions>) this.userdao.getquestions(1);

				Integer counter3 = (Integer) model.get("counter3");
				if (counter3 == null)
					counter3 = 0;
				else
					counter3++;
				model.put("counter3", counter3);
				track++;
				model.put("track", track);
				Questions ans = list3.get(counter3);
				answer = ans.getAnswer();
				model.put("answer", answer);
				model.put("Question", list3.get(counter3));

				return "quiz";

			} else if (questions.getTime() > 40 && questions.getTime() < 60
					&& Objects.equals(questions.getAnswer(), answer)) {

				if (marks == null)
					marks = 0;
				else
					marks++;
				model.put("marks", marks);
				List<Questions> list3 = new ArrayList<Questions>();

				list3 = (ArrayList<Questions>) this.userdao.getquestions(1);

				Integer counter3 = (Integer) model.get("counter3");
				if (counter3 == null)
					counter3 = 0;
				else
					counter3++;
				model.put("counter3", counter3);
				track++;
				model.put("track", track);

				Questions ans = list3.get(counter3);
				answer = ans.getAnswer();
				model.put("answer", answer);
				model.put("Question", list3.get(counter3));

				return "quiz";

			} else if (questions.getTime() > 40 && questions.getTime() < 60
					&& !(Objects.equals(questions.getAnswer(), answer))) {

				List<Questions> list3 = new ArrayList<Questions>();

				list3 = (ArrayList<Questions>) this.userdao.getquestions(1);

				Integer counter3 = (Integer) model.get("counter3");
				if (counter3 == null)
					counter3 = 0;
				else
					counter3++;
				model.put("counter3", counter3);
				track++;
				model.put("track", track);

				Questions ans = list3.get(counter3);
				answer = ans.getAnswer();
				model.put("answer", answer);
				model.put("Question", list3.get(counter3));

				return "quiz";

			}

			else {

				return "result";

			}
		}

		else {

			return "result";

		}
	}


}


