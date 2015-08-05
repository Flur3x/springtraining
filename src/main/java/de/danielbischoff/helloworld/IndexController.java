package de.danielbischoff.helloworld;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Daniel on 04.08.15.
 */
@Controller
public class IndexController {

    /**
     * Generates the index page and a new (empty) person object
     * @return a ModelAndView object, to be resolved by the DispatcherServlet
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView newPerson() {
        return new ModelAndView("person", "command", new Person());
    }

    /**
     * Takes the data from the POST method and adds them as attributes of the new generated person model
     * @param person
     * @param model
     * @return the result view
     */
    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String createPerson(@ModelAttribute("SpringWeb")Person person, ModelMap model) {
        model.addAttribute("firstname", person.getFirstname());
        model.addAttribute("lastname", person.getLastname());
        System.out.print("Following data has been saved in the person model: " + model.get("firstname") + " " + model.get("lastname"));
        return "result";
    }
}