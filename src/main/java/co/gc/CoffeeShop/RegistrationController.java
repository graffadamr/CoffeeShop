package co.gc.CoffeeShop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegistrationController {

	@Autowired
	private FormInfo f;

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("index", "test", "Hello");
		f.setFirstName("Adam");
		f.setLastName("Graff");
		f.setEmail("adam@gmail.com");
		f.setPhoneNumber("5175821976");
		f.setPassword("password");

		mv.addObject("userInfoTest", f);

		return mv;

	}

	@PostMapping("/register")
	public ModelAndView formDeets(@RequestParam("firstName") String fi, @RequestParam("lastName") String l,
			@RequestParam("Email") String e, @RequestParam("phoneNumber") String pn,
			@RequestParam("password") String p) {
		FormInfo fFromForm = new FormInfo(fi, l, e, pn, p);
		return new ModelAndView("complete-page", "f", fFromForm);

	}
	
	@RequestMapping("/register")
	public String register() {
	    return "register";
	}
}
