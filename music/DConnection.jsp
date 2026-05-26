<%@page import="java.sql.*" %>
<%!
public class DConnection {

    Connection con;
    ResultSet rs=null;
    Statement st;

    public int setData(String str){
        int i=0;
        try{
            try{
                Class.forName("com.mysql.jdbc.Driver");
            }catch(Exception e){
                try{ Class.forName("org.mariadb.jdbc.Driver"); }catch(Exception ex){}
            }
            con=DriverManager.getConnection("jdbc:mysql://localhost/jayvik123?user=root&password=jayvik");
            st=con.createStatement();
            st.execute(str);
            i = st.getUpdateCount();
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }

    public ResultSet getData(String str) {
        try{
            try{
                Class.forName("com.mysql.jdbc.Driver");
            }catch(Exception e){
                try{ Class.forName("org.mariadb.jdbc.Driver"); }catch(Exception ex){}
            }
            con=DriverManager.getConnection("jdbc:mysql://localhost/jayvik123?user=root&password=jayvik");
            st=con.createStatement();
            rs = st.executeQuery(str);
        }
        catch (Exception e){
           e.printStackTrace();
       }
        return rs;
    }
}
%>