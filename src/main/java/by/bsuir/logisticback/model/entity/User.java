package by.bsuir.logisticback.model.entity;

import lombok.*;

import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "users")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private long id;

    @Column
    private String login;

    @Column
    private String password;

    @Column
    private boolean enabled;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "user_role",
            joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id")
    )
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private List<Role> roles;

    public User(long id, String login, String password, boolean enabled) {
        this.id = id;
        this.login = login;
        this.password = password;
        this.enabled = enabled;
    }
}
