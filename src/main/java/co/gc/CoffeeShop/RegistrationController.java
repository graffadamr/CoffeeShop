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

	@PostMapping("/complete-page")
	public ModelAndView formDeets(@RequestParam("firstName") String fi, @RequestParam("lastName") String l,
			@RequestParam("email") String e, @RequestParam("phoneNumber") String pn,
			@RequestParam("password") String p) {
		FormInfo fFromForm = new FormInfo(fi, l, e, pn, p);
		return new ModelAndView("complete-page", "f", fFromForm);

	}

	@RequestMapping("/register")
	public String register() {
		return "register";
	}
}
