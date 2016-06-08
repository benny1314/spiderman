/*
 * Copyright (c)Shanghai Easy Deal Foreign Currency Exchange Co., Ltd.
 */

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.processor.PageProcessor;

import java.util.List;

/**
 * @author benny
 * @date 2016/4/25
 * @description
 */

public class GithubRepoPageProcessor implements PageProcessor {

    public static final String URL_LIST = "http://readcolor.com/books/.*";

    public static final String URL_POST = "http://readcolor.com/books?p=.*";

    // 部分一：抓取网站的相关配置，包括编码、抓取间隔、重试次数等
    private Site site = Site.me().setRetryTimes(10).setSleepTime(8000);

    @Override
    public void process(Page page) {


//        page.putField("title", page.getHtml().xpath("//a[@class='book thumbnail']/div/div/h4").$("h4", "text").all());
        page.getHtml().xpath("//a[@class='book thumbnail']").links();

        List<String> all = page.getHtml().xpath("//a[@class='book thumbnail']").links().all();
        page.addTargetRequests(all);

        //列表页
        if (page.getUrl().regex(URL_LIST).match()) {
            List<String> urls = page.getHtml().css("div.pagination").xpath("//ul/li/a").links().all();
            page.addTargetRequests(urls);
            //文章页
        } else {
            System.out.println("------------------------进入详情页----------------------------");
            String text = page.getHtml().css("a.mobi", "text").get();
            System.out.println(text);
            page.putField("type", page.getHtml().$("a.mobi", "text"));
            page.putField("content", page.getHtml().xpath("//li[@a='mobi']").links());
            System.out.println("------------------------进入详情页----------------------------");
        }
    }


//        for (String s : replace.all()) {
//            System.out.println(s);
//        }


    @Override
    public Site getSite() {
        return site;
    }

    public static void main(String[] args) {
        Spider.create(new GithubRepoPageProcessor()).addUrl("http://readcolor.com/books?p=1&tag=%E8%AE%A1%E7%AE%97%E6%9C%BA").thread(200).run();


    }


}
