package be.vdab.domain.converter;

import be.vdab.domain.Director;
import be.vdab.repository.DirectorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

/**
 * Created by jeansmits on 15/07/15.
 */
@Component
public class StringToDirectorConverter implements Converter<String, Director> {
    @Autowired
    private DirectorRepository directorRepository;

    @Override
    public Director convert(String source) {
        return directorRepository.findOne(Integer.parseInt(source));
    }
}
