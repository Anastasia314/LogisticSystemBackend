package by.bsuir.logisticback.model.entity;


import javax.annotation.processing.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(User.class)
public class User_ {
    public static volatile SingularAttribute<User, Long> id;
    public static volatile SingularAttribute<User, String> login;
    public static volatile SingularAttribute<User, String> password;
    public static volatile SingularAttribute<User, Boolean> enabled;
    public static volatile ListAttribute<User, Role> roles;
}
