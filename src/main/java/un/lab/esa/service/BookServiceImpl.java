package un.lab.esa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;
import un.lab.esa.dao.BookDao;
import un.lab.esa.model.Book;

import java.util.List;

public class BookServiceImpl implements BookService{

    private BookDao bookDao;

    @Autowired(required = true)
    @Qualifier(value = "bookDao")
    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Override
    @Transactional
    public List<Book> listBooks() {
        return this.bookDao.listBooks();
    }
}
