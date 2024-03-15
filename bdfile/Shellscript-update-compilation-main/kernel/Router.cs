using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) 
        {
            string strConexao = "Data Source=(Local);Integrated Security=SSPI;Initial Catalog=Northwind;"; 
            string sSql = "SELECT ProductID, ProductName FROM Product"; 
            using (SqlConnection conn = new SqlConnection(strConexao))
            {
                SqlCommand cmd = new SqlCommand(sSql, conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();

                try
                {
                    SqlCommandBuilder builder = new SqlCommandBuilder(da);

                    DataRow newRow = ds.Tables[0].NewRow();
                    newRow["ProductName"] = "Novo Produto";
                    ds.Tables[0].Rows.Add(newRow);

                    da.Update(ds.Tables[0]); 

                    Response.Write("<script>alert('Produto atualizado com sucesso!')</script>");
                }
                catch (SqlException ex)
                {
                    Response.Write("Erro Sql: " + ex.Message);
                }
                catch (InvalidOperationException ex)
                {
                    Response.Write("Erro InvalidOperationException: " + ex.Message);
                }
                catch (Exception ex)
                {
                    Response.Write("Erro: " + ex.Message);
                }
            }
        }
    }
}