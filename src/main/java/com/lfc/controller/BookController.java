package com.lfc.controller;

import com.lfc.pojo.Books;
import com.lfc.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    //controller 调service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //查询全部书籍。并返回书籍展示界面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list=bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "addBook";
    }

    //添加书籍请求
    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println("books:"+books);
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    //跳转到修改界面
    @RequestMapping("/toUpdateBook")
    public String toUpdatePaper(int id,Model model){
        Books book =bookService.queryBookById(id);
        model.addAttribute("Book",book);
        return "updateBook";
    }

    //提交修改数据请求
    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        System.out.println("update=>books:"+books);
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    //删除书籍
    @RequestMapping("/deleteBook")
    public String deleteBook(int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }
}
