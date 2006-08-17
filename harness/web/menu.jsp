<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!--
/* The contents of this file are subject to the terms
 * of the Common Development and Distribution License
 * (the License). You may not use this file except in
 * compliance with the License.
 *
 * You can obtain a copy of the License at
 * https://faban.dev.java.net/public/CDDLv1.0.html or
 * install_dir/legal/LICENSE
 * See the License for the specific language governing
 * permission and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL
 * Header Notice in each file and include the License file
 * at install_dir/legal/LICENSE.
 * If applicable, add the following below the CDDL Header,
 * with the fields enclosed by brackets [] replaced by
 * your own identifying information:
 * "Portions Copyrighted [year] [name of copyright owner]"
 *
 * $Id: menu.jsp,v 1.2 2006/08/17 01:19:25 akara Exp $
 *
 * Copyright 2005 Sun Microsystems Inc. All Rights Reserved
 */
-->
<%@ page language="java" import="com.sun.faban.harness.engine.AccessController,
                                 javax.security.auth.Subject"%>
<jsp:useBean id="usrEnv" scope="session" class="com.sun.faban.harness.webclient.UserEnv"/>
<%
    Subject user = usrEnv.getSubject();
    boolean submitAllowed = AccessController.submitAllowed(user);
%>
<html>
    <head>
        <title></title>
        <link rel="icon" type="image/gif" href="img/faban.gif">
    </head>
    <body>
        <table BORDER="0" WIDTH="100%" BGCOLOR="#FFFFFF" color="#666699" >
            <tr><td VALIGN="TOP"></td></tr>
            <tr><td VALIGN="CENTER"><br/>
<% if (submitAllowed) { %>
            <tr><td VALIGN="CENTER"><br/><a href="selectprofile.jsp" target="main">Schedule Run</a></td></tr>
            <tr><td VALIGN="CENTER"><br/><a href="suspend-runs.jsp" target="main">Suspend Pending Runs</a></td></tr>
            <tr><td VALIGN="CENTER"><br/><a href="resume-runs.jsp" target="main">Resume Pending Runs</a></td></tr>
            <tr><td VALIGN="CENTER"><br/><a href="kill-run.jsp" target="main">Kill Current Run</a></td></tr>
<% } else { %>
            <tr><td VALIGN="CENTER" style="color: rgb(102, 102, 102);"><br/>Schedule Run</td></tr>
            <tr><td VALIGN="CENTER" style="color: rgb(102, 102, 102);"><br/>Suspend Pending Runs</td></tr>
            <tr><td VALIGN="CENTER" style="color: rgb(102, 102, 102);"><br/>Resume Pending Runs</td></tr>
            <tr><td VALIGN="CENTER" style="color: rgb(102, 102, 102);"><br/>Kill Current Run</td></tr>
<% } %>
            <tr><td VALIGN="CENTER"><br/><a href="resultlist.jsp" target="main">View Results</a></td></tr>
<% if (submitAllowed) { %>
            <tr><td VALIGN="CENTER"><br/><a href="pending-runs.jsp" target="main">View Pending Runs</a></td></tr>
            <tr><td VALIGN="CENTER"><br/><a href="switchprofile.jsp" target="main">Switch Profile</a></td></tr>
<% } else { %>
            <tr><td VALIGN="CENTER" style="color: rgb(102, 102, 102);"><br/>View Pending Runs</td></tr>
            <tr><td VALIGN="CENTER" style="color: rgb(102, 102, 102);"><br/>Switch Profile</td></tr>
<% } %>
            <tr><td VALIGN="CENTER"><br/><a href="http://faban.sunsource.net/docs/guide/harness/toc.html" target="_blank">Help</a></td></tr>
            <tr><td VALIGN="TOP"></td></tr>
        </table>
    </body>
</html>
