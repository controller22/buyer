<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>
    
            <h1>상품상세 페이지</h1>
            <table border="1">
                <tr>
                    <th>번호</th>
                    <th>상품명</th>
                    <th>가격</th>
                    <th>재고</th>
                    <th>등록일</th>
                </tr>
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.price}</td>
                    <td>${product.qty}</td>
                    <td>${product.createdAtToString}</td>
                </tr>

            </table>
            <div class="number_box">
                <form action="/product/${product.id}/purchase" method="post">
                    <input type="number" name="purchase" min="0" max="9999" value="1">
                    <button type="submit">구매</button>
                </form>
            </div>

   <%@ include file="../layout/footer.jsp" %>
    