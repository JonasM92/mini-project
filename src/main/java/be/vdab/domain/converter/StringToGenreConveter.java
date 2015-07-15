package be.vdab.domain.converter;

import be.vdab.domain.Genre;
import be.vdab.repository.GenreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class StringToGenreConveter implements Converter<String, Genre> {
    @Autowired
    private GenreRepository genreRepository;

    @Override
    public Genre convert(String source) {
        return genreRepository.findOne(Integer.parseInt(source));
    }
}
