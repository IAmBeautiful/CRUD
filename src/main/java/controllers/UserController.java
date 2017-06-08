package controllers;

import dao.UserDaoImpl;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import service.userService;

import java.util.List;

@Controller
public class UserController {

    private userService userService;

    @Autowired(required = true)
    @Qualifier(value = "userService")
    public void setUserService(userService userService) {
        this.userService = userService;
    }


    @RequestMapping(value = "users")
    public ModelAndView listUsers(@RequestParam(required = false) Integer page, Model model) {


        ModelAndView modelAndView = new ModelAndView("users");

        UserDaoImpl.page = -1;

        int currentpage = 0;
        if (page != null)
            currentpage = page - 1;

        List<User> users = this.userService.listUsers();
        PagedListHolder<User> pagedListHolder = new PagedListHolder<>(users);
        pagedListHolder.setPageSize(5);
        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) page = 1;

        modelAndView.addObject("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            modelAndView.addObject("users", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
            modelAndView.addObject("users", pagedListHolder.getPageList());
        }


        UserDaoImpl.page = currentpage;


        model.addAttribute("user", new User());
        model.addAttribute("listUsers", this.userService.listUsers());

        return modelAndView;
    }


    @RequestMapping(value = "/user/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user) {

        try {

            if (user.getId() == 0) {
                this.userService.addUser(user);
            } else {
                this.userService.updateUser(user);
            }

            return "redirect:/users";
        } catch (Exception e) {
            return "Oops";
        }
    }

    @RequestMapping("/remove/{id}")
    public String removeUser(@PathVariable("id") int id) {
        this.userService.removeUser(id);

        return "redirect:/users";
    }

    @RequestMapping("/edit/{id}")
    public String editUser(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", this.userService.getUserById(id));
        model.addAttribute("listUsers", this.userService.listUsers());

        return "users";
    }

    @RequestMapping("/userdata/{id}")
    public String userData(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", this.userService.getUserById(id));

        return "userdata";
    }

    @RequestMapping(value = "/user/search", method = RequestMethod.POST)
    public String userSearch(@ModelAttribute("user") User user, Model model) {
        model.addAttribute("listUsers", this.userService.searchUsers(user));

        return "usersearch";
    }

    @RequestMapping(value = "/instruction")
    public String instruction() {
        return "instruction";
    }
}