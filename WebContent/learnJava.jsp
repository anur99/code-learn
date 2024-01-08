<%@page import="com.beans.InfoBeans"%>
<%@ page errorPage="errorPage.jsp"%>
<%
    InfoBeans user = (InfoBeans) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("loginPage.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Code Learner</title>
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/content.css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
            <a class="navbar-brand" href="profile.jsp"><span class="	fa fa-coffee"></span>Code
                Learners</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"><a class="nav-link" href="#"><span
                                class=""></span>Home <span class="sr-only">(current)</span></a></li>

                    <li class="nav-item"><a class="nav-link" href="codeEditor.jsp"><span
                                class=""></span>Code Editor</a></li>
                </ul>
                <ul class="navbar-nav mr-right">
                    <li class="nav-item"><a class="nav-link"
                                            href="displayProfile.jsp"><span class="fa fa-user-circle"></span><%=user.getUsername()%></a></li>

                    <li class="nav-item"><a class="nav-link" href="LogoutServlet"><span
                                class="fa fa-user-plus"></span>Logout</a></li>
                </ul>
            </div>
        </nav>
        <!--Java Tutorials.......-->
        <div class="main-body">
            <main class="main-doc">
                <section class="main-section">
                    <header>What is Java?</header>
                    <p>Java is a programming language and a platform. Java &Tab; is a high level, robust, object-oriented and secure programming language.
                        Java was developed by Sun Microsystems (which is now the subsidiary of Oracle) in the year 1995. James Gosling is known as the father of Java. Before
                        Java, its name was Oak. Since Oak was already a registered company, so James Gosling and his team changed the name from Oak to Java.</p>
                    <p><b>Platform:</b> Any hardware or software environment in which a program runs, is known as a platform. Since Java has a runtime environment (JRE) and API, it is called a platform.</p>

                    <header>Java Example</header>
                    <p>Let's have a quick look at Java programming example. A detailed description of Hello Java example is available in next page.</p>
                    <h6 style="color: red;">Sample Java Program</h6>
                    <code style="color: green;">
                        public class Main<br>
                        {<br>
                        public static void main(String args[])<br>
                        {<br>
                        System.out.println("Hello World");<br>
                        }<br>
                        }<br>
                    </code>

                    <!--Features of java--> 
                    <header>Features of Java</header><br>
                    <h6>1. Simple</h6>
                    <p>Java is very easy to learn, and its syntax is simple, clean and easy to understand. According to Sun Microsystem, Java language is a simple programming language because:</p>
                    <ul>
                        <li>Java syntax is based on C++ (so easier for programmers to learn it after C++).</li>
                        <li>Java has removed many complicated and rarely-used features, for example, explicit pointers, operator overloading, etc.</li>
                        <li>There is no need to remove unreferenced objects because there is an Automatic Garbage Collection in Java.</li>
                    </ul>

                    <h6>2. Object Oriented</h6>
                    <p>Java is an object-oriented programming language. Everything in Java is an object. Object-oriented means we organize our software as a combination of different types of objects that incorporate both data and behavior.</p>
                    <p>Object-oriented programming (OOPs) is a methodology that simplifies software development and maintenance by providing some rules.</p>
                    <p>Concepts of OOP's are :</p>
                    <ol>
                        <li>Object</li>
                        <li>Class</li>
                        <li>Inheritance</li>
                        <li>Polymorphism</li>
                        <li>Abstraction</li>
                        <li>Encapsulation</li>
                    </ol>
                    <h6>3. Platform Independent</h6>
                    <p>Java is platform independent because it is different from other languages like C, C++, etc. which are compiled into platform specific machines while Java is a write once, run anywhere language. A platform is the hardware or software environment in which a program runs.
                    </p>
                    <p>There are two types of platforms software-based and hardware-based. Java provides a software-based platform.</p>

                    <p>The Java platform differs from most other platforms in the sense that it is a software-based platform that runs on top of other hardware-based platforms.</p>
                    <h6>4. Secured</h6>
                    <p>Java is best known for its security. With Java, we can develop virus-free systems. Java is secured because:</p>
                    <ul>
                        <li>No Explicit Pointer</li>
                        <li>Java Programs run inside a virtual machine sandbox</li>
                        <li>Classloader</li>
                        <li>Bytecode Verifier</li>
                        <li>Security Manager</li>
                    </ul>
                    <h6>5. Robust</h6>
                    <p>The English mining of Robust is strong. Java is robust because:</p>
                    <ul>
                        <li>It uses strong memory management.</li>
                        <li>There is a lack of pointers that avoids security problems.</li>
                        <li>Java provides automatic garbage collection which runs on the Java Virtual Machine to get rid of objects which are not being used by a Java application anymore.</li>
                        <li>There are exception handling and the type checking mechanism in Java. All these points make Java robust.</li>
                    </ul>

                    <h6>6.Architecture-neutral </h6>
                    <p>Java is architecture neutral because there are no implementation dependent features, for example, the size of primitive types is fixed.</p>
                    <p>
                        In C programming, int data type occupies 2 bytes of memory for 32-bit architecture and 4 bytes of memory for 64-bit architecture. However, it occupies 4 bytes of memory for both 32 and 64-bit architectures in Java.</p>
                    <h6>7. Portable</h6>
                    <p>Java is portable because it facilitates you to carry the Java bytecode to any platform. It doesn't require any implementation.</p>
                    <h6>8. High-Performance </h6>
                    <p>Java is faster than other traditional interpreted programming languages because Java bytecode is "close" to native code. It is still a little bit slower than a compiled language (e.g., C++). Java is an interpreted language that is why it is slower than compiled languages, e.g., C, C++, etc.</p>
                    <h6>9. Distributed</h6>
                    <p>Java is distributed because it facilitates users to create distributed applications in Java. RMI and EJB are used for creating distributed applications. This feature of Java makes us able to access files by calling the methods from any machine on the internet.</p>
                    <h6>10. Multi-threading </h6>
                    <p>A thread is like a separate program, executing concurrently. We can write Java programs that deal with many tasks at once by defining multiple threads. The main advantage of multi-threading is that it doesn't occupy memory for each thread. It shares a common memory area. Threads are important for multi-media, Web applications, etc.</p>
                    <h6>11. Dynamic</h6>
                    <p>Java is a dynamic language. It supports the dynamic loading of classes. It means classes are loaded on demand. It also supports functions from its native languages, i.e., C and C++.</p>
                </section>
            </main>
        </div>
    </body>
</html>
