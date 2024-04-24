const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGonggao"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"科研类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryKeyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"请假类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryLaoshiqingjia"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"调课申请类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryTiaoke"
                    }
                ],
                "menu":"基础数据管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告信息管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告信息管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"教学质量管理",
                        "menuJump":"列表",
                        "tableName":"jiaoxuezhiliang"
                    }
                ],
                "menu":"教学质量管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"科研管理",
                        "menuJump":"列表",
                        "tableName":"keyan"
                    }
                ],
                "menu":"科研管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"老师管理",
                        "menuJump":"列表",
                        "tableName":"laoshi"
                    }
                ],
                "menu":"老师管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "报表",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"老师考勤管理",
                        "menuJump":"列表",
                        "tableName":"laoshikaoqin"
                    }
                ],
                "menu":"老师考勤管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "审核",
                            "修改",
                            "删除"
                        ],
                        "menu":"老师请假管理",
                        "menuJump":"列表",
                        "tableName":"laoshiqingjia"
                    }
                ],
                "menu":"老师请假管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "审核",
                            "删除"
                        ],
                        "menu":"调课申请管理",
                        "menuJump":"列表",
                        "tableName":"tiaoke"
                    }
                ],
                "menu":"调课申请管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"薪资管理",
                        "menuJump":"列表",
                        "tableName":"xinzi"
                    }
                ],
                "menu":"薪资管理"
            }
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    }
    ,
            {
                "backMenu":[
                    {
                        "child":[
                            {
                                "buttons":[
                                    "查看"
                                ],
                                "menu":"公告信息管理",
                                "menuJump":"列表",
                                "tableName":"gonggao"
                            }
                        ],
                        "menu":"公告信息管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看"
                                ],
                                "menu":"教学质量管理",
                                "menuJump":"列表",
                                "tableName":"jiaoxuezhiliang"
                            }
                        ],
                        "menu":"教学质量管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看"
                                ],
                                "menu":"科研管理",
                                "menuJump":"列表",
                                "tableName":"keyan"
                            }
                        ],
                        "menu":"科研管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看"
                                ],
                                "menu":"老师考勤管理",
                                "menuJump":"列表",
                                "tableName":"laoshikaoqin"
                            }
                        ],
                        "menu":"老师考勤管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增"
                                ],
                                "menu":"老师请假管理",
                                "menuJump":"列表",
                                "tableName":"laoshiqingjia"
                            }
                        ],
                        "menu":"老师请假管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增"
                                ],
                                "menu":"调课申请管理",
                                "menuJump":"列表",
                                "tableName":"tiaoke"
                            }
                        ],
                        "menu":"调课申请管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看"
                                ],
                                "menu":"薪资管理",
                                "menuJump":"列表",
                                "tableName":"xinzi"
                            }
                        ],
                        "menu":"薪资管理"
                    }
                ],
                "frontMenu":[],
                "hasBackLogin":"是",
                "hasBackRegister":"否",
                "hasFrontLogin":"否",
                "hasFrontRegister":"否",
                "roleName":"老师",
                "tableName":"laoshi"
            }
]
    }
}
export default menu;