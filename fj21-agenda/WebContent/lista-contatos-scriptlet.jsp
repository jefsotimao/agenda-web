<%@page import="java.text.SimpleDateFormat"%>
<%@ page import = "java.util.*, java.sql.*,
					 br.com.caelum.agenda.modelo.*,
						br.com.caelum.agenda.dao.*" %>
					
					
<html>
<body>
<table border="3">
<% ContatoDao dao = new ContatoDao();
	List<Contato> contatos = dao.getLista();
	
	for(Contato contato : contatos){
	%>
	<tr>
		
			<th>NOME</th>
			<td><%=contato.getNome()%></td>
			<th>EMAIL</th>
			<td><%=contato.getEmail()%></td>
			<th>ENDEREÇO</th>
			<td><%=contato.getEndereco()%></td>
			<th>DATA NASCIMENTO</th>
			<% String dataFormatada = new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime()); %>
			<td><%=dataFormatada%></td>
	</tr>		
<%
	}
%>

</table>
</body>
</html>					