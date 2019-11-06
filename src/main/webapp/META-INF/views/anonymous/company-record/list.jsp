
<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:list >
	<acme:list-column code="anonymous.companyRecord.list.label.name" path="nameIncorporated" width="25%"/>
	<acme:list-column code="anonymous.companyRecord.list.label.ceo" path="ceo" width="25%"/>
	<acme:list-column code="anonymous.companyRecord.list.label.link" path="link" width="25%"/>
	<acme:list-column code="anonymous.companyRecord.list.label.stars" path="stars" width="25%"/>
</acme:list>	
	