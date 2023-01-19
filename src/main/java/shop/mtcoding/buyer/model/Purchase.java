package shop.mtcoding.buyer.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Purchase {
    private int id;
    private int usrId;
    private int productId;
    private int qty;
    private Timestamp createdAt;
}
