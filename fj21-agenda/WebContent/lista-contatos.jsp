<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<body>
<!-- Instanciando a classe ContatoDao -->
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>

<c:import url="cabecalho.jsp"/>

<table border="1">
<!-- Percorrendo os contatos da linha da tabela -->
<c:forEach var="contato" items="${dao.lista}" varStatus="id">
<tr bgcolor="#${id.count %2==1 ? 'aaee88' : 'ffffff'}">

<th>LOGICA</th>
<td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a> </td>
<th>ID</th>
<td>${id.count}</td>
<th>NOME</th>
<td>${contato.nome}</td>
<th>EMAIL</th>
<td>
<c:choose>
<c:when test="${not empty contato.email}">
<a href="mailto:${contato.email}"/>${contato.email}
</c:when>
<c:otherwise>
E-mail não informado
</c:otherwise>
</c:choose>
</td>
<th>ENDEREÇO</th>
<td>${contato.endereco}</td>
<th>DATA NASCIMENTO</th>
<td><fmt:formatDate value="${contato.dataNascimento.time}"
	pattern="dd/MM/yyyy" /></td>
</c:forEach>
</table>
<c:import url="rodape.jsp"/>
</body>