<%--
- menu.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java" import="acme.framework.helpers.PrincipalHelper,acme.entities.roles.Provider,acme.entities.roles.Consumer"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:menu-bar code="master.menu.home">
	<acme:menu-left>
		 <acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
		 	<acme:menu-suboption code="master.menu.anonymous.announcement" action="/anonymous/announcement/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.anonymous.investor-recordList" action="/anonymous/investor-record/list"/>
            <acme:menu-suboption code="master.menu.anonymous.investor-top-recordList" action="/anonymous/investor-top-record/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.anonymous.companyRecordList" action="/anonymous/company-record/list"/>
			<acme:menu-suboption code="master.menu.anonymous.companyTopRecordList" action="/anonymous/company-top-record/list"/>
			<acme:menu-separator/>
		<!-- master.menu.anonymous.favourite-link Link Favorito Alejandro-->
			<acme:menu-suboption code="master.menu.anonymous.favourite-linkA" action="https://github.com/alefuegom"/>
		<!-- master.menu.anonymous.favourite-link Link Favorito Pedro-->
			<acme:menu-suboption code="master.menu.anonymous.favourite-linkB" action="https://watch.nba.com"/>
		<!-- master.menu.anonymous.favourite-link Link Link Favorito Jose Manuel -->
			<acme:menu-suboption code="master.menu.anonymous.favourite-linkC" action="https://es.stackoverflow.com/"/>	
		<!-- master.menu.anonymous.favourite-link Link Link Favorito Miguel -->
			<acme:menu-suboption code="master.menu.anonymous.favourite-linkD" action="https://www.informatica.us.es/"/>	
			<acme:menu-separator/>
			
			
			<acme:menu-suboption code="master.menu.anonymous.shout" action="/anonymous/shout/create"/>
			<acme:menu-suboption code="master.menu.anonymous.shoutlist" action="/anonymous/shout/list"/>
			
			<acme:menu-separator/>
			
			<acme:menu-suboption code="master.menu.anonymous.talk" action="/anonymous/talk/create"/>
			<acme:menu-suboption code="master.menu.anonymous.talklist" action="/anonymous/talk/list"/>
			
			<acme:menu-separator/>
			
			<!-- master.menu.anonymous.createPlayers Crear un Jugador -->
			<acme:menu-suboption code="master.menu.anonymous.createPlayersPedro" action="/anonymous/player/create"/>
		<!-- master.menu.anonymous.listPlayers Listar Jugadores -->
			<acme:menu-suboption code="master.menu.anonymous.listPlayersPedro" action="/anonymous/player/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.anonymous.offer" action="/anonymous/offer2/create"/>
			<acme:menu-suboption code="master.menu.anonymous.offerList" action="/anonymous/offer2/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.anonymous.book" action="/anonymous/book/create"/>
			<acme:menu-suboption code="master.menu.anonymous.bookList" action="/anonymous/book/list"/>
            <acme:menu-separator/>
			
				
	</acme:menu-option>
		
		<acme:menu-option code="master.menu.authenticated" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.authenticated.announcement" action="/authenticated/announcement/list"/>
			<acme:menu-separator/>			
			<acme:menu-suboption code="master.menu.authenticated.offer" action="/authenticated/offer/list"/>
            <acme:menu-separator/>
            <acme:menu-suboption code="master.menu.authenticated.active-request.list" action="/authenticated/active-request/list"/>
            <acme:menu-separator/>
            <acme:menu-suboption code="master.menu.authenticated.challenge.list" action="/authenticated/challenge/list"/>
            <acme:menu-separator/>
            <acme:menu-suboption code="master.menu.authenticated.company-record.list" action="/authenticated/company-record/list"/>
            <acme:menu-separator/>
            <acme:menu-suboption code="master.menu.authenticated.investor-record.list" action="/authenticated/investor-record/list"/>
            
            
		</acme:menu-option>

		<acme:menu-option code="master.menu.administrator" access="hasRole('Administrator')">
			<acme:menu-suboption code="master.menu.administrator.user-accounts" action="/administrator/user-account/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.announcement" action="/administrator/announcement/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.dashboard" action="/administrator/dashboard/show"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.configuration" action="/administrator/configuration/show"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.shutdown" action="/master/shutdown"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.provider" access="hasRole('Provider')">
			<acme:menu-suboption code="master.menu.provider.favourite-link" action="http://www.example.com/"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.consumer" access="hasRole('Consumer')">
			<acme:menu-suboption code="master.menu.consumer.favourite-link" action="http://www.example.com/"/>
		</acme:menu-option>
	</acme:menu-left>

	<acme:menu-right>
		<acme:menu-option code="master.menu.sign-up" action="/anonymous/user-account/create" access="isAnonymous()"/>
		<acme:menu-option code="master.menu.sign-in" action="/master/sign-in" access="isAnonymous()"/>

		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.user-account.general-data" action="/authenticated/user-account/update"/>
			<acme:menu-suboption code="master.menu.user-account.become-provider" action="/authenticated/provider/create" access="!hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.provider" action="/authenticated/provider/update" access="hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.become-consumer" action="/authenticated/consumer/create" access="!hasRole('Consumer')"/>
			<acme:menu-suboption code="master.menu.user-account.consumer" action="/authenticated/consumer/update" access="hasRole('Consumer')"/>
			
		</acme:menu-option>

		<acme:menu-option code="master.menu.sign-out" action="/master/sign-out" access="isAuthenticated()"/>
	</acme:menu-right>
</acme:menu-bar>

