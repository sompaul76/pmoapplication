package com.capgemini.pmo.controller;
import com.capgemini.pmo.entity.Account;
import org.springframework.roo.addon.web.mvc.controller.annotations.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/accounts")
@Controller
@RooWebScaffold(path = "accounts", formBackingObject = Account.class)
public class AccountController {
}
