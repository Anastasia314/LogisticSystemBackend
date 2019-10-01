package by.bsuir.logisticback.repository.specification.user;

import by.bsuir.logisticback.model.entity.User;
import by.bsuir.logisticback.model.entity.User_;
import org.springframework.data.jpa.domain.Specification;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

public class UserByLoginSpecification implements Specification<User> {
    private String login;

    public UserByLoginSpecification(String login) {
        this.login = login;
    }

    @Override
    public Predicate toPredicate(Root<User> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
        return criteriaBuilder.equal(root.get(User_.login), login);
    }
}
