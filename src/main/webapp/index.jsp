<%--
  Created by IntelliJ IDEA.
  User: benny
  Date: 2016/4/25
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link rel="stylesheet" href="ztree/demo.css" type="text/css">
    <link rel="stylesheet" href="ztree/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="ztree/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="ztree/jquery.ztree.core.js"></script>
    <title>$Title$</title>
    <SCRIPT LANGUAGE="JavaScript">
      var zTreeObj;
      // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
      var setting = {};
      // zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
      var zNodes =[
        {
          "id": 309,
          "name": "test",
          "icon": "ztree/img/diy/1_close.png",
          "children": []
        },
        {
          "id": 407,
          "name": "果酒",
          "children": [
            {
              "id": 409,
              "name": "草莓酒"
            },
            {
              "id": 409,
              "name": "草莓酒",
              "children": [
                {
                  "id": 411,
                  "name": "甜草莓酒"
                },
                {
                  "id": 410,
                  "name": "酸草莓酒"
                }
              ]
            }
          ]
        },
        {
          "id": 318,
          "name": "红酒",
          "children": [
            {
              "id": 319,
              "name": "红葡萄酒"
            },
            {
              "id": 320,
              "name": "白葡萄酒"
            }
          ]
        },
        {
          "id": 325,
          "name": "欢乐送专用酒",
          "children": [
            {
              "id": 326,
              "name": "专用红酒"
            },
            {
              "id": 327,
              "name": "专用白酒"
            }
          ]
        },
        {
          "id": 321,
          "name": "1",
          "icon": "ztree/img/diy/1_close.png",
          "children": []
        },
        {
          "id": 361,
          "name": "测试",
          "children": [
            {
              "id": 362,
              "name": "喵尚品类"
            },
            {
              "id": 363,
              "name": "欢乐送类"
            }
          ]
        },
        {
          "id": 296,
          "name": "白酒",
          "children": [
            {
              "id": 300,
              "name": "酱香型"
            },
            {
              "id": 300,
              "name": "酱香型",
              "children": [
                {
                  "id": 306,
                  "name": "天之蓝"
                },
                {
                  "id": 403,
                  "name": "天之蓝"
                },
                {
                  "id": 404,
                  "name": "梦之蓝"
                },
                {
                  "id": 404,
                  "name": "梦之蓝",
                  "children": [
                    {
                      "id": 405,
                      "name": "梦之蓝45°480ml"
                    },
                    {
                      "id": 406,
                      "name": "梦之蓝50° 480ml"
                    }
                  ]
                }
              ]
            },
            {
              "id": 302,
              "name": "绵柔型"
            },
            {
              "id": 302,
              "name": "绵柔型",
              "children": [
                {
                  "id": 401,
                  "name": "柔和种子酒"
                }
              ]
            },
            {
              "id": 303,
              "name": "浓香型"
            },
            {
              "id": 303,
              "name": "浓香型",
              "children": [
                {
                  "id": 402,
                  "name": "老明光"
                }
              ]
            }
          ]
        },
        {
          "id": 323,
          "name": "ceshi",
          "icon": "ztree/img/diy/1_close.png",
          "children": []
        },
        {
          "id": 317,
          "name": "11",
          "icon": "ztree/img/diy/1_close.png",
          "children": []
        },
        {
          "id": 314,
          "name": "22",
          "icon": "ztree/img/diy/1_close.png",
          "children": []
        },
        {
          "id": 322,
          "name": "2",
          "icon": "ztree/img/diy/1_close.png",
          "children": []
        },
        {
          "id": 297,
          "name": "葡萄酒",
          "children": [
            {
              "id": 304,
              "name": "干红"
            },
            {
              "id": 381,
              "name": "红葡萄酒"
            }
          ]
        },
        {
          "id": 364,
          "name": "VIP",
          "icon": "ztree/img/diy/1_close.png",
          "children": []
        },
        {
          "id": 341,
          "name": "2",
          "icon": "ztree/img/diy/1_close.png",
          "children": []
        },
        {
          "id": 301,
          "name": "黄酒",
          "icon": "ztree/img/diy/1_close.png",
          "children": [
            {
              "id": 305,
              "name": "女儿红"
            }
          ]
        },
        {
          "id": 412,
          "name": "果醋",
          "icon": "ztree/img/diy/1_close.png",
          "children": []
        }
      ] //此处的node节点就是你的数据
      $(document).ready(function(){
        zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
      });
      </SCRIPT>
  </head>
  <body>

  <div>
    <ul id="treeDemo" class="ztree"></ul>
  </div>

  </body>
</html>
