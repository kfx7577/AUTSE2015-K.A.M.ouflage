/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package a2;
import java.io.Serializable;
import java.util.List;

/**
 *
 * @author Sherwin
 */
public class ArticlesBean implements Serializable 
{
    private List articleYearList;
    private List articleCategoryList;
    private List articleNameList;
    private List articleLinkList;

    public ArticlesBean()
    {
        articleYearList = null;
        articleCategoryList = null;
        articleNameList = null;
        articleLinkList = null;
    }
    
    public List getArticleYearList()
    {
        return articleYearList;
    }
    
    public void setArticleYearList(List articleYearList)
    {
        this.articleYearList = articleYearList;
    }
    
    public List getArticleCategoryList(){
        return articleCategoryList;
    }
    
    public void setArticleCategoryList(List articleCategoryList)
    {
        this.articleCategoryList = articleCategoryList;
    }
    
    public List getArticleNameList()
    {
        return articleNameList;
    }

    public void setArticleNameList(List articleNameList)
    {
        this.articleNameList = articleNameList;
    }

    public List getArticleLinkList()
    {
        return articleLinkList;
    }

    public void setArticleLinkList(List articleLinkList)
    {
        this.articleLinkList = articleLinkList;
    }
}

    
