package site;
 

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import site.User;

@Controller
public class ProjectController
{
	
    @RequestMapping("/")
    public View homePage(Map<String, Object> model)
    {	
        model.put("userUrl", "user");
        return new RedirectView("/{userUrl}", true);
    }
     
    @RequestMapping(value= "/user", method= RequestMethod.GET)
    public String loginForm(Model model) 
    {
        model.addAttribute("userlogin", new User());
        return "Login";
    }
    
    @RequestMapping(value= "/user", method= RequestMethod.POST)
    public String loginFormData(@ModelAttribute("userlogin") User user, BindingResult result) 
    {
        if(new LoginService().ValidateLogin(user.getUsername(), user.getPassword()))
        {
        	return "Success";
        }
        else
        {
        	return "Login";
        }	
    }	
    
   
    @RequestMapping(value= "/userRegistrationForm", method= RequestMethod.GET)
    public String registerForm(Model model) 
    {
        model.addAttribute("register", new UserForm());
        return "Registration";
    }
    
    @RequestMapping(value= "/userRegistration", method= RequestMethod.GET)
    public String errorForGetSubmit() 
    {
        return "Error";
    }
    
    @RequestMapping(value= "/userRegistration", method= RequestMethod.POST)
    public String registerFormData(@ModelAttribute("register") UserForm userform, BindingResult result) 
    {
    	RegisterService register = new RegisterService();
   	
   		register.Register(userform.getUsername(), userform.getPassword(), userform.getAddress1(), userform.getAddress2(), userform.getCity(), 
   			userform.getState(), userform.getZip());
    	
   		return "RegistrationFormData";
    }
      
}
