import com.lfc.pojo.Books;
import com.lfc.service.BookService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {

    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl=(BookService)context.getBean("BookServiceImpl");
//        for (Books books : bookServiceImpl.queryAllBook()) {
//            System.out.println(books);
//        }
        System.out.println(bookServiceImpl.queryBookById(1));
    }
}
