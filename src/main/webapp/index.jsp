<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Calculator program</title>
</head>
<body>
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
            <td>
                <p>
                    <input required type="number" name="firstNumber"
                           value="<bean:write name="calculateForm" property="firstNumber"/>">
                </p>
            </td>
        </tr>
        <tr>
            <td>Второе число:</td>
            <td>
                <p>
                    <input required type="number" name="secondNumber"
                           value="<bean:write name="calculateForm" property="secondNumber"/>">
                </p>
            </td>
        </tr>
        <tr>
            <td>Действие:</td>
            <td><html:select property="typeAction">
                <html:option value="+">Сложение</html:option>
                <html:option value="-">Вычитание</html:option>
                <html:option value="*">Умножение</html:option>
                <html:option value="/">Деление</html:option>
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
            <html:errors/>
        </div>
        </tbody>
    </table>
</html:form>
</body>
</html>