package shop.mtcoding.buyer.controller;

import java.security.PublicKey;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.buyer.model.Product;
import shop.mtcoding.buyer.model.ProductRepository;
import shop.mtcoding.buyer.model.PurchaseRepository;
import shop.mtcoding.buyer.model.User;

@Controller
public class PurchaseController {

    @Autowired
    private HttpSession session;

    @Autowired
    private PurchaseRepository purchaseRepository;

    @Autowired
    private ProductRepository productRepository;

    /*
     * 목적 : 세션이 있는지 체크, 구매 히스토리 남기기, 재고 수량 변경
     * 
     */

    @PostMapping("/purchae/insert")
    public String insert(int productId, int count) {
        // 1. 세션이 있는지 체크
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/notfound";
        }

        return "redirect:/";
    }
}
