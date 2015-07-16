import be.vdab.Application;
import be.vdab.repository.DirectorRepository;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class DirectorRepositoryTest {
    @Autowired
    DirectorRepository repository;

    @Test
    public void findByNameOfUnexistingDirectorReturnsNull() {
        assertNull(repository.findByNameIgnoringCase("John The None Existing Director"));
    }


    @Test
    public void findByNameIsCaseInsensitive() {
        assertEquals("James Wan", repository.findByNameIgnoringCase("james wan").getName());
    }

}
