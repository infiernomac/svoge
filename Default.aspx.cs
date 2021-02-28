using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Collections.Generic;
using System.Linq;

public partial class _Default : System.Web.UI.Page
{
    List<ImageInfo> l;
    protected void Page_Load(object sender, EventArgs e)
    {
        PopulateFiles();
        if (!IsPostBack)
            setImage(0);
    }

    private void PopulateFiles()
    {
        if (Cache["GalleryImages"] != null)
            l = (List<ImageInfo>)Cache["GalleryImages"];
        else
        {
            string[] s = Directory.GetFiles(Server.MapPath("images/"));
            l = new List<ImageInfo>();
            for (int i = 0; i < s.Length; i++)
            {
                l.Add(new ImageInfo { FileName = s[i].Substring(s[i].LastIndexOf("\\") + 1), Index = i });
            }
            Cache.Insert("GalleryImages", l, null, DateTime.Now.AddHours(1), TimeSpan.Zero);
        }
    }
    protected void ScriptManager1_Navigate(object sender, HistoryEventArgs e)
    {
        if (!string.IsNullOrEmpty(e.State["imgIndex"]))
        {
            int ImgIndex = Int32.Parse(e.State["imgIndex"]);
            setImage(ImgIndex);
        }
        else
            setImage(0);
    }
    private void setImage(int ImgIndex)
    {
        ImageInfo i = l.Where(x => x.Index == ImgIndex).Single();
        imgBtn.ImageUrl = "images/" + i.FileName;
        Title = i.FileName;
    }
    protected void imgBtn_Click(object sender, ImageClickEventArgs e)
    {
        string ImgName = l.Where(x => x.FileName == imgBtn.ImageUrl.Substring(imgBtn.ImageUrl.LastIndexOf("/") + 1)).Select(x => x.FileName.Substring(x.FileName.LastIndexOf("\\") + 1)).First();
        int ImgIndex = l.Where(x => x.FileName == ImgName).Single().Index + 1;
        if (ImgIndex > 3)
            ImgIndex = 0;
        ImageInfo img = l.Where(y => y.Index == ImgIndex).Single();
        ScriptManager1.AddHistoryPoint("imgIndex", img.Index.ToString(), img.FileName);
        imgBtn.ImageUrl = "images/" + img.FileName;
    }
    [Serializable]
    class ImageInfo
    {
        public int Index { get; set; }
        public string FileName { get; set; }
    }
}