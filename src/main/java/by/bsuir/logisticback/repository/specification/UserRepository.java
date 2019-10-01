package by.bsuir.logisticback.repository.specification;

import by.bsuir.logisticback.model.entity.User;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User, Long>, JpaSpecificationExecutor<User>,
        PagingAndSortingRepository<User, Long> {
}
