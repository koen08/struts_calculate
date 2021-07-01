<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html:form action="/results">
    <style>
        * {
            margin: 0;
            padding: 0;
            font-size: 110%;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            color: #333366;
        }

        table {
            justify-content: center;
            flex-direction: row;
            flex-wrap: wrap;
            padding: 50px;
            min-height: 100vh;
            position: relative;
            left: 25%;
        }

        .button {
            background: #52e3d6;
            width: 300px;
        }
    </style>
    <table border="0">
        <p style="color: red; font-size: 35px;"><html:errors property="errorProper"/></p>
        <tbody>
        <tr>
            <td>Первое число:</td>
            <td><html:text onkeyup="this.value = this.value.replace(/[^\d]/g,'');" property="firstNumber"/></td>
        </tr>
        <tr>
            <td>Второе число:</td>
            <td><html:text onkeyup="this.value = this.value.replace(/[^\d]/g,'');" property="secondNumber"/></td>
        </tr>
        <tr>
            <td>Действие:</td>
            <td><html:select property="typeAction">
                <option selected disabled>Выберите действие</option>
                <option value="+">Сложение</option>
                <option value="-">Вычитание</option>
                <option value="*">Умножение</option>
                <option value="/">Деление</option>
            </html:select></td>
        </tr>
        <tr>
            <td></td>
            <td><html:submit value="Результат" styleClass="button"/></td>
        </tr>
        <tr>
            <td>Результат:</td>
            <td><html:text readonly="true" property="results"/></td>
        </tr>
        <div style="color:red">
            <html:errors />
        </div>
        </tbody>
    </table>
</html:form>