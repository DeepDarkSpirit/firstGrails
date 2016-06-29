package firstgrails
//院士
class Academician {

    String electionYear//[增选年度] [nchar](4) NOT NULL,
    Integer candidateID//[候选人ID] [int] NOT NULL,
    String nominationID//[提名书号] [nvarchar](10) NULL,
    String name//[姓名] [nvarchar](30) NOT NULL,
    Integer age//[年龄] [int](18-70) NOT NULL,
    String disciplines//[学科专业] [nchar] NULL,
    String organization//[工作单位] [nchar] NULL,

    String division//学部ID] [int] NULL,
    String idType//[证件类型] [nvarchar](10) NOT NULL CONSTRAINT [DF__候选人__证件类型__534D60F1]  DEFAULT ('居民身份证'),
    String idnum//[证件号码] [nvarchar](30)NULL,
    String ethnicity//[民族ID]
    String nation//[籍贯国家ID] [int] NULL CONSTRAINT [DF__候选人__籍贯国家ID__5441852A]  DEFAULT ((1)),
    String state// [籍贯省市ID] [int] NULL,
    String degree//[学历] [int] NULL,
    String death//[是否去世] [nchar](1) NOT NULL DEFAULT ('否'),
    String deathDay//[去世日期] [datetime] NULL,
    String recall //[是否罢免] [nchar](1) NOT NULL DEFAULT ('否'),

    static constraints = {
        candidateID()
        name()
        electionYear(nullable: true,size:4..4)
        division(nullable: true)
        idType(nullable: true)
        idnum(nullable: true)
        ethnicity(nullable: true)
        nation(nullable: true)
        state(nullable: true)
        degree(nullable: true)
        death(nullable: true)
        deathDay(nullable: true)
        recall(nullable: true)
    }
}
