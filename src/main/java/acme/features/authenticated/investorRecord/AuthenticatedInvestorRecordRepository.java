
package acme.features.authenticated.investorRecord;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.investorRecords.InvestorRecord;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedInvestorRecordRepository extends AbstractRepository {

	@Query("select a from InvestorRecord a where a.id =  ?1")
	InvestorRecord findoneById(int id);

	@Query("select a from InvestorRecord a")
	Collection<InvestorRecord> findManyAll();

	@Query("select a from InvestorRecord a where a.stars = 5")
	Collection<InvestorRecord> findManyAllTop();
}
