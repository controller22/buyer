<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
        </head>


        <body>
            <h1>상세목록 페이지</h1>
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
                    <td>${product.createdAt}</td>
                </tr>

            </table>
            <div class="number_box">
                <form action="/product/${product.id}/purchase" method="post">
                    <input type="number" name="purchase" min="0" max="9999" value="1">
                    <button type="submit">구매</button>
                </form>
            </div>

        </body>

        </html>