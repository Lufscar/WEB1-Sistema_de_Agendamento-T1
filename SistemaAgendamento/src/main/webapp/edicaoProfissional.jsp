<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="br.ufscar.dc.dsw.domain.Profissionais"%>
<%@page import="br.ufscar.dc.dsw.dao.ProfissionaisDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ProfissionaisDAO profissionaisDAO = new ProfissionaisDAO();
    Profissionais profissional = profissionaisDAO.get(Long.parseLong(request.getParameter("id")));
%>

<!DOCTYPE html>
<fmt:bundle basename="messages">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Medico Page</title>
    </head>
    <body>
        <h1><fmt:message key="edit_doctor_title"/></h1>
        <form action="Ctlprofissional/atualizacao" method="POST">
            <table border="1">

				<tr>
					<td><label for="cpf">CPF</label></td>
					<td><input type="text" id="cpf" name="cpf" size="11" required
						value="${profissional.cpf}" /></td>
				</tr>
				<tr>
					<td><label for="email">E-mail</label></td>
					<td><input type="text" id="email" name="email" size="128"
						required value="${profissional.email}" /></td>
				</tr>
			
				<tr>
					<td><label for="senha">Senha</label></td>
					<td><input type="password" id="senha" name="senha" size="64"
						required value="${profissional.senha}" /></td>
				</tr>
				<tr>
					<td><label for="nome">Nome</label></td>
					<td><input type="text" id="nome" name="nome" size="128" required
						value="${profissional.nome}" /></td>
				</tr>
				<tr>
					<td><label for="telefone">Área</label></td>
					<td><input type="number" id="telefone" name="telefone" size="13"
						required value="${profissional.area}" /></td>
				</tr>
				<tr>
					<td><label for="sexo">Especialidade</label></td>
					<td><input type="text" id="sexo" name="sexo" required size="128"
						value="${profissional.especialidade}" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="Salva" /></td>
				</tr>
			</table>
        </form>
    </body>
</html>
</fmt:bundle>