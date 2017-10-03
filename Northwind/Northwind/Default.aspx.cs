using System;
using System.Xml.XPath;

namespace Northwind
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            Vieja forma de hacerlo:

            System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
            doc.Load(Server.MapPath("App_Data/OrderGetAll.xml")); 
            
            System.Xml.Xsl.XslTransform trans = new System.Xml.Xsl.XslTransform();
            trans.Load(Server.MapPath("App_Data/XSLTFile.xslt"));

            ControlXml.Document = doc;
            ControlXml.Transform = trans;
            */

            XPathDocument docnav = new XPathDocument(Server.MapPath("App_Data/OrderGetAll.xml"));
            XPathNavigator nav = docnav.CreateNavigator();
            ControlXml.XPathNavigator = nav;
            ControlXml.TransformSource = Server.MapPath("App_Data/XSLTFile.xslt");
        }
    }
}