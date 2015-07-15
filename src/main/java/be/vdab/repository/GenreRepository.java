package be.vdab.repository;

import be.vdab.domain.Genre;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by jeansmits on 14/07/15.
 */
public interface GenreRepository extends JpaRepository<Genre, Integer> {
}
