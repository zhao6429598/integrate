<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ tag language="java" import="com.it.util.CommonUtil" %>
<%@ tag language="java" import="com.it.constant.SessionKeyConst" %>
<%@ tag language="java" import="java.util.List" %>
<%@ tag language="java" import="com.it.dto.ActionDto" %>
<%@ tag import="com.it.util.CommonUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute type="java.lang.String" name="url" required="true" %>
<%@ attribute type="java.lang.String" name="method" %>

<% if(CommonUtil.contains(session, url, method)) { %>
	<jsp:doBody/>
<% } %>