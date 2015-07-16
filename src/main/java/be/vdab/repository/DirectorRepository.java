package be.vdab.repository;

import be.vdab.domain.Director;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by jeansmits on 14/07/15.
 */
public interface DirectorRepository extends JpaRepository<Director, Integer> {
    Director findByNameIgnoringCase(String name);
}
