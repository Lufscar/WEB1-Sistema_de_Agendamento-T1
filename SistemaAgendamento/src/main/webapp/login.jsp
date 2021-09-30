<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autenticação de Usuário</title>
        <link href="${pageContext.request.contextPath}/layout.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Autenticação de Usuário</h1>

        <form method="post" action="autentifica.jsp">
            <table>
                <tr>
                    <th>Login: </th>
                    <td><input type="text" name="login"
                               value="${param.login}"/></td>
                </tr>
                
                <tr>
                    <th>Senha: </th>
                    <td><input type="password" name="senha" /></td>
                </tr>
                
                <tr>
                    <th>Tipo: </th>
                    <td> <select id="tipo" name="tipo">
  							<option value="cliente">Cliente</option>
  							<option value="profissional">Profissional</option>
  							<option value="admin">Admin</option>
						</select></td>
                </tr>
                
                <tr>
                    <td colspan="2"> 
                        <input type="submit" name="bOK" value="Entrar"/>
                    </td>
                </tr>
            </table>
        </form>
        <a href="Index.jsp">Voltar para a tela inicial</a>
    </body>
</html>