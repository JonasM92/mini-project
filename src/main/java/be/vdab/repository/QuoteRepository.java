package be.vdab.repository;

import be.vdab.domain.Quote;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by jeansmits on 16/07/15.
 */
@Repository
public interface QuoteRepository extends JpaRepository<Quote, Integer> {
}
