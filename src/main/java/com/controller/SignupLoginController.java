package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.service.SignupLogiinService;
import com.user.UserDto;
import com.userentity.UserEntity;

@Controller
public class SignupLoginController {

	@Autowired
	SignupLogiinService signupLogiinService;

	@GetMapping({ "/register" })
	public String getSignupPage() {
		return "signup";
	}

	@GetMapping({ "/auth", "/" })
	public String getLoginPage() {
		return "login";
	}

	@PostMapping("/register")
	public String regUser(@ModelAttribute UserDto userDto, Model model) {

		signupLogiinService.doSignup(userDto);

		model.addAttribute("msg", "Successfully signedUp");

		return "signup";

	}

	@PostMapping("/auth")
	public String authUser(@RequestParam String username, @RequestParam String password, Model model) {

		UserDto userfound = signupLogiinService.doLogin(username, password);

		if (userfound != null) {

			List<UserDto> userDtoList = signupLogiinService.fetchAllEmplyees();

			model.addAttribute("userList", userDtoList);

			return "home";
		}

		else {
			model.addAttribute("msg", "sorry incorrect username or password");
			return "login";
		}

	}

	@GetMapping("/showEditForm")
	String displayEditForm(@RequestParam int uid, Model model) {

		UserDto userDto = signupLogiinService.fetchRecord(uid);

		if (userDto != null) {

			model.addAttribute("userDto", userDto);
			return "editform";

		}

		List<UserDto> userDtoList = signupLogiinService.fetchAllEmplyees();

		model.addAttribute("userList", userDtoList);

		return "home";

	}

	@PostMapping("/update")
	String doUpdate(@ModelAttribute UserDto userDto, Model model) {

		try {

			signupLogiinService.doSignup(userDto);
		} catch (Exception e) {
			model.addAttribute("exmsg", "something went wrong.....");
			List<UserDto> userList = signupLogiinService.fetchAllEmplyees();
			model.addAttribute("userList", userList);
			return "home";// showAll.jsp

		}

		List<UserDto> userDtoList = signupLogiinService.fetchAllEmplyees();

		model.addAttribute("userList", userDtoList);

		return "home";

	}

}
