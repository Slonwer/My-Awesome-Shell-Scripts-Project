using System;
using System.IO;
using System.Web.UI;

public partial class ArquivoUpdate : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        string arquivo = @"C:\livro\capitulo6\";

        if (FileUpload1.HasFile) {
            try {
                string filename = Path.GetFileName(FileUpload1.FileName);
                
                if (Permitir(filename)) {
                    try {
                        arquivo += filename;
                        FileUpload1.SaveAs(arquivo);
                        lbMensagem.Text = "Arquivo enviado com sucesso";
                        txtConteudo.Text = LerArquivo(FileUpload1.FileContent);
                    }
                    catch (HttpException ex) {
                        lbMensagem.Text = "Erro ao enviar arquivo: " + ex.Message;
                    }
                }
                else {
                    lbMensagem.Text = "Extensão não permitida";
                }
            }
            catch (Exception ex) {
                lbMensagem.Text = "Erro: " + ex.Message;
            }
        }
    }

    private bool Permitir(string filename) {
        // Implemente a lógica para verificar se a extensão do arquivo é permitida
        // Por exemplo:
        // return filename.EndsWith(".txt") || filename.EndsWith(".pdf");
        return true; // Ajuste conforme necessário
    }

    private string LerArquivo(Stream str) {
        using (StreamReader sr = new StreamReader(str, System.Text.Encoding.GetEncoding("ISO-8859-1"))) {
            return sr.ReadToEnd();
        }
    }
}
